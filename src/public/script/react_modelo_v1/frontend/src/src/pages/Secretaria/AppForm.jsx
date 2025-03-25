// C:\laragon\www\sgcpro\src\public\script\react_modelo_v1\frontend\src\pages\Secretaria\AppForm.jsx
import React, { useState, useEffect } from 'react';
import { useForm, Controller } from 'react-hook-form';
import { X, Save } from 'lucide-react';
import SecretariaService from '../../services/secretaria';
import './styles.css';

const AppForm = () => {

  // Configuração do formulário com react-hook-form
  const { register, handleSubmit, control, reset, formState: { errors } } = useForm({
    defaultValues: {
      token_csrf: "3jk4h5l6h7j8k9l0m1n2o3p4q5r6s7t8u9v0w1x2y3z4a5b6c7d8e9f0g1h2i3j4k5l6m7n8o9p0q1r2s3t4u5v6w7x8y9z0a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s5t6u7v8w9x0y1z2a3b4c5d6e7f8g9h0i1j2k3l4m5n6o7p8q9r0s1t2u3v4w5x6y7z8a9b0c1d2e3f4g5h6i7j8k9l0m1n2o3p4q5r6s7t8u9v0w1x2y3z4a5b6c7d8e9f0g1h2i3j4k5l6m7n8o9p0q1r2s3t4u5v6w7x8y9z0a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s5t6u7v8w9x0y1z2a3b4c5d6e7f8g9h0i1j2k3l4m5n6o7p8q9r0s1t2u3v4w5x6y7z8a9b0c1d2e3f4g9",
      id: "",
      pro_origem_id: "",
      tipo: "",
      active: "",
      sigla_pronome_tratamento: "",
      nome: "",
      cnpj_cpf: "",
      remember_token: "",
      created_by: "",
      created_by_name: "",
      updated_by: "",
      updated_by_name: "",
      created_at: "",
      updated_at: "",
      deleted_at: ""
    }
  });

  // Handler para submissão do formulário
  const handleFormSubmit = (data) => {
    // Se uma função onSubmit for fornecida pelos componentes pai, use-a
    if (onSubmit) {
      onSubmit(data);
    } else {
      // Caso contrário, implemente a lógica padrão
      console.log("Dados do formulário:", data);
      // Implementação padrão de envio para a API (exemplo)
      /*
      axios.post('/api/circuito', data)
        .then(response => {
          console.log('Sucesso:', response.data);
          // Redirecionar ou mostrar mensagem de sucesso
        })
        .catch(error => {
          console.error('Erro:', error);
          // Mostrar mensagem de erro
        });
      */
    }
  };

  return (
    <div className="container mt-4">
      <form onSubmit={handleSubmit(handleFormSubmit)} className="needs-validation">
        <input type="hidden" {...register("token_csrf")} />
        <input type="hidden" {...register("id")} />
        <input type="hidden" {...register("created_by")} />
        <input type="hidden" {...register("created_by_name")} />
        <input type="hidden" {...register("updated_by")} />
        <input type="hidden" {...register("updated_by_name")} />

        <div className="row mb-3">
          <div className="col-md-6">
            <label htmlFor="nome" className="form-label">Nome da Secretaria</label>
            <input
              type="text"
              className={`form-control ${errors.nome ? 'is-invalid' : ''}`}
              id="nome"
              {...register("nome", { required: "Nome é obrigatório" })}
            />
            {errors.nome && <div className="invalid-feedback">{errors.nome.message}</div>}
          </div>
          
          <div className="col-md-6">
            <label htmlFor="sigla_pronome_tratamento" className="form-label">Sigla da Secretaria</label>
            <input
              type="text"
              className={`form-control ${errors.sigla_pronome_tratamento ? 'is-invalid' : ''}`}
              id="sigla_pronome_tratamento"
              {...register("sigla_pronome_tratamento", { required: "sigla_pronome_tratamento é obrigatório" })}
            />
            {errors.sigla_pronome_tratamento && <div className="invalid-feedback">{errors.sigla_pronome_tratamento.message}</div>}
          </div>

        </div>
        
        <div className="row mb-3">
          <div className="col-md-6">
            <label htmlFor="cnpj_cpf" className="form-label">CNPJ/CPF</label>
            <input
              type="number"
              className={`form-control ${errors.cnpj_cpf ? 'is-invalid' : ''}`}
              id="cnpj_cpf"
              {...register("cnpj_cpf", { required: "CNPJ/CPF é obrigatória" })}
            />
            {errors.cnpj_cpf && <div className="invalid-feedback">{errors.cnpj_cpf.message}</div>}
          </div>
        </div>

        <div className="d-grid gap-2 d-md-flex justify-content-md-end">
          <button type="button" className="btn btn-secondary me-md-2" onClick={() => window.history.back()}>
            <X size={18} className="me-1" /> Cancelar
          </button>
          <button type="submit" className="btn btn-primary">
            <Save size={18} className="me-1" /> Salvar
          </button>
        </div>
      </form>
    </div>
  );
};

export default AppForm;