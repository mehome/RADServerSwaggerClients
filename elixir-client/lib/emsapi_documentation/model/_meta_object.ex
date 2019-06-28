# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.MetaObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"creator",
    :"created",
    :"updated"
  ]

  @type t :: %__MODULE__{
    :"creator" => String.t,
    :"created" => String.t,
    :"updated" => String.t
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.MetaObject do
  def decode(value, _options) do
    value
  end
end

