open CommonTypes;

type t = {
  account_id: string,
  amount: option(float),
  category_id: option(string),
  date: string,
  id: option(string),
  imported_id: option(string),
  imported_payee: option(string),
  notes: option(string),
  payee: option(string),
  payee_id: option(string),
  subtransactions: option(array(t)),
  transfer_id: option(string),
};

[@bs.send]
external update: (Api.t, id, Js.t('a)) => Js.Promise.t(unit) =
  "updateTransaction";

[@bs.send]
external delete: (Api.t, id) => Js.Promise.t(unit) = "deleteTransaction";
