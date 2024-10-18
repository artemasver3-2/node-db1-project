const Account = require('./accounts-model');
const db = require('../../data/db-config')

exports.checkAccountPayload = async (req, res, next) => {
try {
  if (req.body.name.trim() === undefined || req.body.budget.trim() === undefined) {
    res.status(400).json({
      message: 'name and budget are required',
    });
  }
  if(req.body.name.trim() < 3 || req.body.name.trim() < 100) {
    res.status(400).json({
      message: 'name of account must be between 3 and 100',
    });
  }
  if(req.body.budget.isNan() || typeof req.body.budget !== 'number') {
    res.status(400).json({
      message: 'budget of account must be a number',
    });
  }
  if(req.body.budget <= 0 || req.body.budget >=  1000000) {
    res.status(400).json({
      message: 'budget of account is too large or too small',
    });
  } else {
    next()
  }
} catch(err) {
  next()
}
};

exports.checkAccountNameUnique = async (req, res, next) => {
  try {
    const takenNames = await db('accounts')
      .where('name', req.body.name.trim())
      .first()
    
      if(takenNames) {
        res.status(400).json({
          message: 'that name is taken',
        });
      } else {
        next()
      }
  } catch(err) {
    next(err)
  }
  next();
};

exports.checkAccountId = async (req, res, next) => {
  try {
    const account = await Account.getById(req.params.id);
    if (!account) {
      res.status(404).json({
        message: 'account not found',
      });
    } else {
      req.account = account;
      next();
    }
  } catch (err) {
    next(err);
  }
  next();
};
