import React, { useState } from 'react';
import { useForm } from 'react-hook-form';
import { X, Save } from 'lucide-react';
import CobrancaService from '../../services/cobranca';
import './styles.css';

const AppForm = () => {

    const [cadastro_prestadoras, setOperadoras] = useState([]);
    const [circuitos, setCircuitos] = useState([]);

  // Configuração do formulário com react-hook-form
  const { register, handleSubmit, control, reset, formState: { errors } } = useForm({
    defaultValues: {
      token_csrf: "3jk4h5l6h7j8k9l0m1n2o3p4q5r6s7t8u9v0w1x2y3z4a5b6c7d8e9f0g1h2i3j4k5l6m7n8o9p0q1r2s3t4u5v6w7x8y9z0a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s5t6u7v8w9x0y1z2a3b4c5d6e7f8g9h0i1j2k3l4m5n6o7p8q9r0s1t2u3v4w5x6y7z8a9b0c1d2e3f4g5h6i7j8k9l0m1n2o3p4q5r6s7t8u9v0w1x2y3z4a5b6c7d8e9f0g1h2i3j4k5l6m7n8o9p0q1r2s3t4u5v6w7x8y9z0a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s5t6u7v8w9x0y1z2a3b4c5d6e7f8g9h0i1j2k3l4m5n6o7p8q9r0s1t2u3v4w5x6y7z8a9b0c1d2e3f4g9",
      id: "",
      circuito_id: "",
      cadastro_cliente_id: "",
      cadastro_prestadora_id: "",
      active: "",
      dia_cobrado: "",
      data_inicio: "",
      data_fim: "",
      custo_mensal: "",
      SEI: "",
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
            <label htmlFor="cadastro_prestadora" className="form-label">Operadora</label>
            <select
              className={`form-select ${errors.cadastro_prestadora ? 'is-invalid' : ''}`}
              id="cadastro_prestadora"
              {...register("cadastro_prestadora", { required: "Operadora é obrigatória" })}
            >
              <option value="" hidden></option>
              {cadastro_prestadoras.map(cadastro_prestadora => (
                <option key={cadastro_prestadora.id} value={cadastro_prestadora.id}>
                  {cadastro_prestadora.nome} - {cadastro_prestadora.cadastro_prestadora} Mbps - {cadastro_prestadora.link}
                </option>
              ))}
            </select>
            {errors.secretaria_id && <div className="invalid-feedback">{errors.secretaria_id.message}</div>}
          </div>

          <div className="col-md-6">
            <label htmlFor="dataInicio" className="form-label">Mês de Competência</label>
            <input
              type="date"
              className={`form-control ${errors.dataInicio ? 'is-invalid' : ''}`}
              id="dataInicio"
              {...register("dataInicio", { required: "Data Fim é obrigatória" })}
            />
            {errors.dataInicio && <div className="invalid-feedback">{errors.dataInicio.message}</div>}
          </div>
        </div>
        <div className="row mb-3">
          <div className="col-md-6">
            <label htmlFor="circuito" className="form-label">Lote</label>
            <select
              className={`form-select ${errors.circuito ? 'is-invalid' : ''}`}
              id="circuito"
              {...register("circuito", { required: "Operadora é obrigatória" })}
            >
              <option value="" hidden></option>
              {circuitos.map(circuito => (
                <option key={circuito.id} value={circuito.id}>
                  {circuito.nome} - {circuito.circuito} Mbps - {circuito.link}
                </option>
              ))}
            </select>
            {errors.secretaria_id && <div className="invalid-feedback">{errors.secretaria_id.message}</div>}
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