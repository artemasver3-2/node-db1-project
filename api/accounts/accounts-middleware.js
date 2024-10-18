const Account = require('./accounts-model');
const db = require('../../data/db-config');

exports.checkAccountPayload = (req, res, next) => {
  const error = { status: 404 };
  const { name, budget } = req.body;

  if (name === undefined || budget === undefined) {
    error.message = 'name and budget are required';
    next(error);
  } else if (name.trim().length < 3 || name.trim().length > 100) {
    error.message = 'name of account must be between 3 and 100';
    next(error);
  } else if (
    typeof budget.trim().length !== 'number' ||
    isNaN(budget.trim().length)
  ) {
    error.message = 'budget of account must be a number';
    next(error);
  } else if (budget <= 0 || budget >= 1000000) {
    error.message = 'budget of account is too large or too small';
    next(error);
  }
  if (error.message) {
    next(error);
  } else {
    next();
  }
};

exports.checkAccountNameUnique = async (req, res, next) => {
  try {
    const takenNames = await db('accounts')
      .where('name', req.body.name.trim())
      .first();

    if (takenNames) {
      res.status(400).json({
        message: 'that name is taken',
      });
    } else {
      next();
    }
  } catch (err) {
    next(err);
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
