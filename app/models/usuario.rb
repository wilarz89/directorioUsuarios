class Usuario < ActiveRecord::Base
    validates  :nombres, presence:true,
                    length:{minimum: 3}
end
