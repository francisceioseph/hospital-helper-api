class AddSpecialtiesSeedSeeder < Germinator::Seed

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
    Specialty.destroy_all
    Specialty.create!([
      {
        id: 1,
        specialty_name: 'Anestesiologia'
      },
      {
          id: 2,
          specialty_name: 'Angiologia'
      },
      {
          id: 3,
          specialty_name: 'Administração De Hospitais'
      },
      {
          id: 4,
          specialty_name: 'Anatomia Patológica'
      },
      {
          id: 5,
          specialty_name: 'Anatomia Humana'
      },
      {
          id: 6,
          specialty_name: 'Bioquímica'
      },
      {
          id: 7,
          specialty_name: 'Toracica E Cirurgia Cardiovascular'
      },
      {
          id: 8,
          specialty_name: 'Cardiologia'
      },
      {
          id: 9,
          specialty_name: 'Cirurgia Geral'
      },
      {
          id: 10,
          specialty_name: 'Cirurgia Da Cabeça E Do Pescoço E Do Maxilo Facial'
      },
      {
          id: 11,
          specialty_name: 'Cirurgia Pediátrica'
      },
      {
          id: 12,
          specialty_name: 'Cirurgia Plástica E De Reparo'
      },
      {
          id: 13,
          specialty_name: 'Dermatologia'
      },
      {
          id: 14,
          specialty_name: 'Endocrinologia'
      },
      {
          id: 15,
          specialty_name: 'Doenças Infecciosas E Tropicais'
      },
      {
          id: 16,
          specialty_name: 'Embriologia'
      },
      {
          id: 17,
          specialty_name: 'Epidemiologia'
      },
      {
          id: 18,
          specialty_name: 'Fisiologia'
      },
      {
          id: 19,
          specialty_name: 'Farmacologia'
      },
      {
          id: 20,
          specialty_name: 'Gastroenterologia'
      },
      {
          id: 21,
          specialty_name: 'Ginecologia E Obstetrícia'
      },
      {
          id: 22,
          specialty_name: 'Geriatria'
      },
      {
          id: 23,
          specialty_name: 'Genética'
      },
      {
          id: 24,
          specialty_name: 'Hematologia'
      },
      {
          id: 25,
          specialty_name: 'Histologia'
      },
      {
          id: 26,
          specialty_name: 'Imunologia E Alergia'
      },
      {
          id: 27,
          specialty_name: 'Medicina Nuclear'
      },
      {
          id: 28,
          specialty_name: 'Medicina De Trabalho'
      },
      {
          id: 29,
          specialty_name: 'Medicina Interna'
      },
      {
          id: 30,
          specialty_name: 'Medicina Legal'
      },
      {
          id: 31,
          specialty_name: 'Medicina Física E Reabilitação'
      },
      {
          id: 32,
          specialty_name: 'Medicina Esportiva'
      },
      {
          id: 33,
          specialty_name: 'Nefrologia'
      },
      {
          id: 34,
          specialty_name: 'Neumologia'
      },
      {
          id: 35,
          specialty_name: 'Neurocirurgia'
      },
      {
          id: 36,
          specialty_name: 'Neurologia'
      },
      {
          id: 37,
          specialty_name: 'Nutrição'
      },
      {
          id: 38,
          specialty_name: 'Oftalmologia'
      },
      {
          id: 39,
          specialty_name: 'Oncologia Médica'
      },
      {
          id: 40,
          specialty_name: 'Oncologia Cirúrgica'
      },
      {
          id: 41,
          specialty_name: 'Ortopedia E Traumatologia'
      },
      {
          id: 42,
          specialty_name: 'Otorrinolaringologia'
      },
      {
          id: 43,
          specialty_name: 'Patologia Clínica'
      },
      {
          id: 44,
          specialty_name: 'Pediatria'
      },
      {
          id: 45,
          specialty_name: 'Psiquiatria'
      },
      {
          id: 46,
          specialty_name: 'Radiologia'
      },
      {
          id: 47,
          specialty_name: 'Radioterapia'
      },
      {
          id: 48,
          specialty_name: 'Reumatologia'
      },
      {
          id: 49,
          specialty_name: 'Saúde Pública'
      },
      {
          id: 50,
          specialty_name: 'Urologia'
      },
      {
          id: 51,
          specialty_name: 'Venereologia'
      },
      {
          id: 52,
          specialty_name: 'Proctologia'
      },
      {
          id: 53,
          specialty_name: 'Medicina Intensiva'
      },
      {
          id: 54,
          specialty_name: 'Medicina Do Trabalho E Meio Ambiente'
      },
      {
          id: 55,
          specialty_name: 'Neonatologia'
      },
      {
          id: 56,
          specialty_name: 'Medicina Integral Geral'
      },
      {
          id: 57,
          specialty_name: 'Cirurgia Geral E Oncológica'
      },
      {
          id: 58,
          specialty_name: 'Medicina Geral E Oncológica'
      },
      {
          id: 59,
          specialty_name: 'Imunologia E Reumatologia'
      },
      {
          id: 60,
          specialty_name: 'Neumologia Pediátrica'
      },
      {
          id: 61,
          specialty_name: 'Medicina De Emergência E Desastres'
      },
      {
          id: 62,
          specialty_name: 'Administração Da Saúde'
      },
      {
          id: 63,
          specialty_name: 'Medicina Familiar'
      },
      {
          id: 64,
          specialty_name: 'Radiodiagnostico'
      },
      {
          id: 65,
          specialty_name: 'Laboratório Clinico'
      },
      {
          id: 66,
          specialty_name: 'Nefrologia Pediátrica'
      },
      {
          id: 67,
          specialty_name: 'Urologia Geral E Oncológica'
      },
      {
          id: 68,
          specialty_name: 'Patologia E Laboratório Clínico'
      },
      {
          id: 69,
          specialty_name: 'Parasitologia'
      },
      {
          id: 70,
          specialty_name: 'Cirurgia Manual'
      },
      {
          id: 71,
          specialty_name: 'Cirurgia Pneumológica'
      },
      {
          id: 72,
          specialty_name: 'Neurologia Pediátrica'
      },
      {
          id: 73,
          specialty_name: 'Histopatologia'
      },
      {
          id: 74,
          specialty_name: 'Oncologia Pediátrica'
      },
      {
          id: 75,
          specialty_name: 'Medicina Abrangente E Gestão Da Saúde'
      },
      {
          id: 76,
          specialty_name: 'Ginecologia Da Menina E Do Adolescente'
      },
      {
          id: 77,
          specialty_name: 'Anatomia Patológica - Patologia Clínica'
      },
      {
          id: 78,
          specialty_name: 'Anestesiologia E Terapia Cardiovascular Intensiva'
      },
      {
          id: 79,
          specialty_name: 'Laboratório Clínico E Anatomia Patológica'
      },
      {
          id: 80,
          specialty_name: 'Medicina Intensiva Pediátrica'
      },
      {
          id: 81,
          specialty_name: 'Endocrinologia Pediátrica E Genética'
      },
      {
          id: 82,
          specialty_name: 'Psiquiatria Da Criança'
      },
      {
          id: 83,
          specialty_name: 'Patologia Oncológica'
      },
      {
          id: 84,
          specialty_name: 'Infectologia Pediátrica'
      },
      {
          id: 85,
          specialty_name: 'Ginecologia Oncológica'
      },
      {
          id: 86,
          specialty_name: 'Gastroenterologia Pediátrica'
      },
      {
          id: 87,
          specialty_name: 'Cirurgia Cardiovascular Pediátrica'
      },
      {
          id: 88,
          specialty_name: 'Oftalmologia Oncológica'
      },
      {
          id: 89,
          specialty_name: 'Adolescentologia'
      },
      {
          id: 90,
          specialty_name: 'Patologia'
      },
      {
          id: 91,
          specialty_name: 'Endocrinologia Pediátrica'
      },
      {
          id: 92,
          specialty_name: 'Cirurgia Oncológica De Cabeça E Pescoço'
      },
      {
          id: 93,
          specialty_name: 'Cirurgia Oncológica De Mamas, Tecidos E Pele'
      },
      {
          id: 94,
          specialty_name: 'Medicina Hiperbárica E Subacuum'
      },
      {
          id: 95,
          specialty_name: 'Cirurgia Vascular E Angiologia'
      },
      {
          id: 96,
          specialty_name: 'Cirurgia Gastroenterológica'
      },
      {
          id: 97,
          specialty_name: 'Cirurgia Ortopédica E Traumatologia'
      },
      {
          id: 98,
          specialty_name: 'Cirurgia Oncológica'
      },
      {
          id: 99,
          specialty_name: 'Imunologia Clínica E Alergologia'
      },
      {
          id: 100,
          specialty_name: 'Oftalmologia Pediátrica E Estratégia'
      },
      {
          id: 101,
          specialty_name: 'Dermatologia E Venereologia'
      },
      {
          id: 102,
          specialty_name: 'Cardiologia Da Criança'
      },
      {
          id: 103,
          specialty_name: 'Cirurgia Do Sistema Digestivo'
      },
      {
          id: 104,
          specialty_name: 'Urologia Pediátrica'
      },
      {
          id: 105,
          specialty_name: 'Anestesiologia Obstetrica'
      },
      {
          id: 106,
          specialty_name: 'Cirurgia Cardiovascular'
      },
      {
          id: 107,
          specialty_name: 'Análises Clínicas'
      },
      {
          id: 108,
          specialty_name: 'Epidemiologia De Campo'
      },
      {
          id: 109,
          specialty_name: 'Pediatria De Emergências E Desastres'
      },
      {
          id: 110,
          specialty_name: 'Radiologia Interventiva'
      },
      {
          id: 111,
          specialty_name: 'Artroscópia E Cirurgia Do Joelho'
      },
      {
          id: 112,
          specialty_name: 'Terapia Intensiva'
      },
      {
          id: 113,
          specialty_name: 'Cirurgia Oncológica Abdominal'
      },
      {
          id: 114,
          specialty_name: 'Cirurgia Craneomaxilofacial'
      },
      {
          id: 115,
          specialty_name: 'Medicina De Reabilitação'
      },
      {
          id: 116,
          specialty_name: 'Medicina Interna Pediátrica'
      },
      {
          id: 117,
          specialty_name: 'Medicina Interna - Gastroenterologia'
      },
      {
          id: 118,
          specialty_name: 'Hematologia E Hemoterapia'
      },
      {
          id: 119,
          specialty_name: 'Cirurgia, Transplantologia E Andrologia'
      },
      {
          id: 120,
          specialty_name: 'Neurofisiologia Clínica'
      },
      {
          id: 121,
          specialty_name: 'Toxicologia'
      },
      {
          id: 122,
          specialty_name: 'Radiologia E Imagem'
      },
      {
          id: 123,
          specialty_name: 'Medicina Aeroespacial'
      },
      {
          id: 124,
          specialty_name: 'Hematologia Pediátrica'
      },
      {
          id: 125,
          specialty_name: 'Hematologia E Hemoterapia'
      },
      {
          id: 126,
          specialty_name: 'Anestesia, Analgesia E Ressuscitação'
      },
      {
          id: 127,
          specialty_name: 'Medicina Interna E Pediatria'
      },
      {
          id: 128,
          specialty_name: 'Endocrinologia E Nutrição'
      },
      {
          id: 129,
          specialty_name: 'Aparelho Digestivo'
      },
      {
          id: 130,
          specialty_name: 'Diagnóstico Por Imagens'
      },
      {
          id: 131,
          specialty_name: 'Gestão Da Saúde'
      },
      {
          id: 132,
          specialty_name: 'Cirurgia Plástica E Reparação De Mãos'
      },
      {
          id: 133,
          specialty_name: 'Oncologia Da Radioterapia'
      },
      {
          id: 134,
          specialty_name: 'Alergologia'
      },
      {
          id: 135,
          specialty_name: 'Emergência E Medicina Intensiva'
      }])
  end


  #
  # Code to execute during the shrivel process (down).
  
  def shrivel
    Specialty.destroy_all
  end

end
