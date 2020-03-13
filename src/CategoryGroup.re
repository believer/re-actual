open CommonTypes;

type t = {
  id: option(string),
  name: string,
  is_income: bool,
  categories: option(array(Category.t)),
};

[@bs.send]
external create: (Api.t, t) => Js.Promise.t(string) = "createCategoryGroup";

[@bs.send]
external update: (Api.t, id, Js.t('a)) => Js.Promise.t(unit) =
  "updateCategoryGroup";

[@bs.send]
external delete: (Api.t, id) => Js.Promise.t(unit) = "deleteCategoryGroup";
