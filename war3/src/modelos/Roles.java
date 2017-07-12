package modelos;

import javax.jdo.annotations.*;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Roles {
	
	@Persistent
	private String nombre;
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key idRoles;
	
	public Roles(String r){
		nombre=r;
	}
	public String getNombre() {
		return nombre;
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