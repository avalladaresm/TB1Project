class Client < ApplicationRecord
    validates_presence_of :NAME_CLIENT, message: 'Ingrese su nombre'
    validates_presence_of :TELEPHONE_CLIENT, message: 'Ingrese su numero telefonico'
    validates_presence_of :EMAIL_CLIENT, message: 'Ingrese su correo electronico'
    validates_presence_of :COUNTRY_CLIENT, message: 'Ingrese el pais donde se encuentra'
    validates_presence_of :ADDRESS_CLIENT, message: 'Ingrese su direccion'

    has_many :development_orders
end
