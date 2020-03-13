# ReasonML bindings for Actual API

[![npm version](https://badge.fury.io/js/re-actual.svg)](https://badge.fury.io/js/re-actual)
[![](https://github.com/believer/telefonnummer/workflows/Release/badge.svg)](https://github.com/believer/telefonnummer/actions?workflow=Release)

This package contains ReasonML (BuckleScript) bindings for the excellent Node
API of [Actual](https://actualbudget.com/),
[`@actual-app/api`](https://www.npmjs.com/package/@actual-app/api).

API documentation is best found in the
[official documentation](https://actualbudget.com/docs/developers/API/). Some
adjustments have been made to better suit the Reason ecosystem.

## Example

Here's a full example usage of getting accounts

```reason
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

```reason
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
