import React from 'react';
import AppForm from './AppForm'

const AppAtualizar = () => {
  return (
    <div>
      <div className="row">
        <div className="col-12 col-sm-6">
          <div className="d-flex align-items-center">
            <div className="ms-4, verticalBarStyle"></div>
            <h2 className="myBold">ATUALIZAR CONTATOS</h2>
          </div>
        </div>
        <div className="col-12 col-sm-6">
          &nbsp;
        </div>
      </div>
      <AppForm />
    </div>
  );
};

export default AppAtualizar;