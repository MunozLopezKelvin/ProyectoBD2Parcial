exports = async function(changeEvent) {

	const clientes= context.services.get("Cluster0").db("gimnasio").collection("cliente");
	const registros= context.services.get("Cluster0").db("gimnasio").collection("registro");
	try {
			var cantidad = await clientes.count({});
			console.log("El resultado es " + cantidad);
			registros.updateOne (
			  {id_registro:1},
			  {$set:
			        {comentario_registro:'Se ha ingresado un cliente, el número de clientes actual es: '+cantidad}
			  }
			  );
			
	
	} catch (err) {
    
    console.error("Ha ocurrido un error: ", err);
  }
  
  return; 
  
};