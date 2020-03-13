# ReasonML bindings for Actual API

This package contains ReasonML (BuckleScript) bindings for the excellent Node
API of [Actual](https://actualbudget.com/),
[`@actual-app/api`](https://www.npmjs.com/package/@actual-app/api).

API documentation is best found in the
[official documentation](https://actualbudget.com/docs/developers/API/). Some
adjustments have been made to better suit the Reason ecosystem.

## Example

Here's a full example usage of getting accounts

```reasonml
open Actual;

let api = Api.make;

let run = () => {
  Js.Promise.(
    api->Accounts.get
    |> then_(accounts => {
         Js.log(accounts);

         resolve();
       })
    |> ignore
  );
};

api->Run.withBudget("YOUR-BUDGET-ID", run);

```

### or using `reason-promise`

```reasonml
open Actual;

let api = Api.make;

let run = () => {
  Api.make
  ->Accounts.get
  ->Promise.Js.fromBsPromise
  ->Promise.Js.get(accounts => Js.log(accounts));
};

api->Run.withBudget("YOUR-BUDGET-ID", run);
```
