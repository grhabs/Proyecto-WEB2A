package labs;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Roles {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key idRoles;
	
	@Persistent
	private boolean estado;

	@Persistent
	private String nombre;
	public Roles(String r){
		nombre=r;
	}
	public boolean isEstado() {
		return estado;
	}

	public String getNombre() {
		return nombre;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getIdRoles() {
		return KeyFactory.keyToString(idRoles);
	}

	public void setIdRoles(String idRoles) {
		Key KeyRoles = KeyFactory.stringToKey(idRoles);
		this.idRoles = KeyFactory.createKey(KeyRoles, Roles.class.getSimpleName(),
				java.util.UUID.randomUUID().toString());
	}
}
