open CommonTypes;

type t = {
  id: option(string),
  payee_id: string,
  _type: string,
  value: option(string),
};

[@bs.send]
external create: (Api.t, id, t) => Js.Promise.t(string) = "createPayeeRule";

[@bs.send]
external update: (Api.t, id, Js.t('a)) => Js.Promise.t(string) =
  "updatePayeeRule";

[@bs.send]
external delete: (Api.t, id) => Js.Promise.t(unit) = "deletePayeeRule";
