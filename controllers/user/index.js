const db = require('knex')({
  client: 'pg',
  connection: process.env.POSTGRES_URI
});

const fillWallet = (req, res) => {
  const { userid, usermoney } = req.body;
  try {
    return (async () => {
      await db('users')
        .where({ userid })
        .increment({ usermoney });

      return res.status(200).json('Кошелек поплнен');
    })();
  } catch (e) {
    return res.status(400).json('Возникла ошибка, повторите позже');
  }
};

const subscribe = (req, res) => {
  const { userid } = req.body;
  return (async () => {
    // get usermoney
    const [user] = await db('users')
      .select('usermoney', 'userstatus')
      .where({ userid });
    // TODO change magic number
    console.log(user);
    let month = new Date().getMonth();
    const day = new Date().getDate();
    let year = new Date().getFullYear();
    if (month + 2 > 12) {
      month = 1;
      year += 1;
    }
    if (user.usermoney > 100 && user.userstatus === 'Inactive') {
      await db('users')
        .update({
          userstatus: 'Premium',
          userstatusduedate: `${month + 2}-${day}-${year}`
        })
        .increment({ userspent: 100 })
        .decrement({ usermoney: 100 })
        .where({ userid });

      return res.status(200).json('Подписка оформлена');
    }
    return res.status(400).json('Недостаточно средств');
  })();
};


module.exports = {
  fillWallet,
  subscribe
};
