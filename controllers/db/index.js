const db = require('knex')({
  client: 'pg',
  connection: process.env.POSTGRES_URI
});

const insert = (req, res) => {
  const { table, fields } = req.body;
  db(table)
    .insert(fields)
    .returning('*')
    .then(result => res.status(200).json(result))
    .catch(err => res.status(400).json(err));
};
const update = (req, res) => {
  const { id, fields, table } = req.body;
  db(table)
    .where({ [id.name]: id.value })
    .update(fields)
    .returning('*')
    .then(result => res.status(200).json(result))
    .catch(err => res.status(400).json(err));
};
const remove = (req, res) => {
  const { id, table } = req.body;
  db(table)
    .where(id)
    .del()
    .then(result => res.status(200).json(result))
    .catch(err => res.status(400).json(err));
};
const selectOne = (req, res) => {
  const { table, idname, idvalue } = req.params;
  db.select('*')
    .from(table)
    .where({ [idname]: idvalue })
    .then(result => res.status(200).json(result[0]))
    .catch(err => res.status(400).json(err));
};
const selectMany = (req, res) => {
  const { table } = req.params;
  db.select('*')
    .from(table)
    .then(result => res.status(200).json(result))
    .catch(err => res.status(400).json(err));
};
const selectManyWithAlias = (req, res) => {
  const { table } = req.params;
  const { fields, joins, filter } = req.body;

  const pipe = args => [].slice.apply(args).reduce((a, b) => arg => b(a(arg)));

  if (filter && joins) {
    const joinInnerMultiple = (table, fields, toJoin) => {
      const joins = toJoin.map(join => con => con.innerJoin(
        `${join.joinTable}`,
        `${table}.${join.joinField}`,
        `${join.joinTable}.${join.joinField}`
      ));
      return pipe(joins)(
        db
          .select(fields)
          .from(table)
          .where(filter)
      );
    };
    return joinInnerMultiple(table, fields, joins)
      .then(result => res.status(200).json(result))
      .catch(err => res.status(400).json(err));
  }
  if (joins) {
    const joinInnerMultiple = (table, fields, toJoin) => {
      const joins = toJoin.map(join => con => con.innerJoin(
        `${join.joinTable}`,
        `${table}.${join.joinField}`,
        `${join.joinTable}.${join.joinField}`
      ));
      return pipe(joins)(db.select(fields).from(table));
    };

    return joinInnerMultiple(table, fields, joins)
      .then(result => res.status(200).json(result))
      .catch(err => res.status(400).json(err));
  }
  return db
    .select(fields)
    .from(table)
    .then(result => res.status(200).json(result))
    .catch(err => res.status(400).json(err));
};
const filter = (req, res) => {
  const { table, fields, filter } = req.body;
  db.select(fields)
    .from(table)
    .where(filter)
    .then(result => res.status(200).json(result))
    .catch(err => res.status(400).json(err));
};

const selectUserBoard = (req, res) => {
  const { userid, pipelineid } = req.params;

  return (async () => {
    const userType = await db
      .select('usertype')
      .from('users')
      .where({ userid });
    return db.select(['stagename as column', 'contactname as contact', 'deals.dealid as id']);
    //   if (userType === 'manager') {
    //     return db
    //       .select('usertype')
    //       .from('users')
    //       .where({ userid })
    //       .then(result => res.status(200).json(result))
    //       .catch(err => res.status(400).json(err));
    //   } if (userType === 'admin') {
    //     return db
    //       .select('usertype')
    //       .from('users')
    //       .where({ userid })
    //       .then(result => res.status(200).json(result))
    //       .catch(err => res.status(400).json(err));
    //   }
    //   return db
    //     .select('usertype')
    //     .from('users')
    //     .where({ userid })
    //     .then(result => res.status(200).json(result))
    //     .catch(err => res.status(400).json(err));
  })();
};
module.exports = {
  insert,
  selectOne,
  remove,
  update,
  selectMany,
  filter,
  selectManyWithAlias,
  selectUserBoard
};
