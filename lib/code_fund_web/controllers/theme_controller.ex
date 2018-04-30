defmodule CodeFundWeb.ThemeController do
  @module "Theme"
  use CodeFundWeb, :controller
  use Framework.CRUDControllerFunctions, [@module, :all, except: [:new, :update, :create, :edit]]
  import Framework.CRUDControllerFunctions, only: [defstub: 2]
  alias Framework.Phoenix.Form.Helpers, as: FormHelpers
  plug(CodeFundWeb.Plugs.RequireAnyRole, roles: ["admin"])

  defstub new(@module) do
    [assigns: [template_choices: controller_assigns()]]
  end

  defstub edit(@module) do
    [assigns: [template_choices: controller_assigns()]]
  end

  defstub update(@module) do
    [assigns: [template_choices: controller_assigns()]]
  end

  defstub create(@module) do
    [assigns: [template_choices: controller_assigns()]]
  end

  def controller_assigns() do
    CodeFund.Templates.list_templates() |> FormHelpers.repo_objects_to_options()
  end
end
