# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.UpdateGroupObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"fieldName",
    :"users"
  ]

  @type t :: %__MODULE__{
    :"fieldName" => String.t,
    :"users" => [String.t]
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.UpdateGroupObject do
  def decode(value, _options) do
    value
  end
end

