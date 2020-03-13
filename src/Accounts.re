[@bs.send]
external get: Api.t => Js.Promise.t(array(Account.t)) = "getAccounts";
