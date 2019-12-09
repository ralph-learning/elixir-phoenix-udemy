defmodule ProjectWeb.CMS.PageView do
  use ProjectWeb, :view
  alias Project.CMS

  def author_name(%CMS.Page{author: author}) do
    author.user.name
  end
end
