class AddPermissionsSeeder < Germinator::Seed

  #
  # Set the configuration for the seed to use during execution.
  #
  def configure config
    # stop_on_error determines if the germination process should stop when a
    # seed file encounters an error during execution. FALSE = Germinator records
    # the error and continues.  TRUE = Germinator stops at the error and halts
    # all future germinator execution.

        config.stop_on_error = false                                            # Default: Continue on all errors.
        # config.stop_on_error = true                                           # Stop on any error.


    # valid_models identifies which models and/or methods need to be present to
    # properly execute this seed file.

        config.valid_models = true                                              # Default: Don't engage model validation.
        # config.valid_models = { model1: true, model2: true }                  # Validate that model1 and model2 exist before executing.
        # config.valid_models = { model1: [ :field1, :field2 ]}                 # Validate that model1 exists and that it has field1 and field2 accessible.


    # stop_on_bad_model determines if the germination process should stop when a
    # seed file fails the model validation.

        config.stop_on_invalid_model = false                                    # Default: Continue on to the next germinator if the models fail the validation.
        # config.stop_on_invalid_model = false                                  # Stop the germinators if the models fail the validation.


    # environments identifies which environments it is safe to execute this seed
    # file in.

        config.environments = true                                              # Default: Execute this seed in all evnironments.
        # config.environments = false                                           # Disable this seed file and prevent it from executing.
        # config.environments = "development"                                   # Only execute this seed file in the development environment.
        # config.environments = ["development", "production"]                   # Only execute this seed file in the development and production environments.
        # config.environments = "test"                                          # Only execute this seed file in the test environment.

  end


  # Code to execute during the germinate process (up).
  #
  def germinate
    Permission.destroy_all
    Permission.create!([
    {
        id: 1,
        action_type: :view,
        resource_name: 'home'
    },
    {
        id: 2,
        action_type: :view,
        resource_name: 'senhas'
    },
    {
        id: 3,
        action_type: :view,
        resource_name: 'prontuario'
    },
    {
        id: 4,
        action_type: :view,
        resource_name: 'prontuario'
    },
    {
        id: 5,
        action_type: :view,
        resource_name: 'documentos'
    },
    {
        id: 6,
        action_type: :view,
        resource_name: 'evolucao'
    },
    {
        id: 7,
        action_type: :view,
        resource_name: 'consultas'
    },
    {
        id: 8,
        action_type: :view,
        resource_name: 'exames'
    },
    {
        id: 9,
        action_type: :view,
        resource_name: 'cirurgias'
    },
    {
        id: 10,
        action_type: :view,
        resource_name: 'cadastro-paciente',
    },
    {
        id: 11,
        action_type: :view,
        resource_name: 'cadastro-medico',
    },
    {
        id: 12,
        action_type: :view,
        resource_name: 'cadastro-tipo-cirurgia',
    },
    {
        id: 13,
        action_type: :view,
        resource_name: 'cadastro-especialidade',
    },
    {
        id: 14,
        action_type: :view,
        resource_name: 'cadastro-tipo-atendimento',
    },
    {
        id: 15,
        action_type: :view,
        resource_name: 'cadastro-tipo-exame'
    },
    {
        id: 16,
        action_type: :view,
        resource_name: 'cadastro-especialidade',
    },
    {
        id: 17,
        action_type: :view,
        resource_name: 'cadastro-tipo-cirurgia',
    },
    {
        id: 18,
        action_type: :view,
        resource_name: 'cadastro-tipo-atendimento',
    },
    {
        id: 19,
        action_type: :view,
        resource_name: 'cadastro-tipo-exame',
    },
    {
        id: 20,
        action_type: :view,
        resource_name: 'perfis-acesso'
    },
    {
        id: 21,
        action_type: :view,
        resource_name: 'profile'
    },
    {
        id: 22,
        action_type: :view,
        resource_name: 'mensagens'
    }
    ])
  end


  ##
  # Code to execute during the shrivel process (down).
  #
  def shrivel
    Permission.destroy_all
  end

end
