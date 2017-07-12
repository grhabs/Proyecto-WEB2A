package labs;

import javax.jdo.annotations.Extension;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import java.lang.Long;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Usuario {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long idUsuario;
	@Persistent
	private String nombre;
	@Persistent
	private String apellido;
	@Persistent
	private String cuenta;
	@Persistent
	private String FeNacimiento;
	@Persistent
	private String genero;
	@Persistent
	private String direccion;
	@Persistent
	private String ciudad;
	@Persistent
	private String telefono;
	@Persistent
	private String password;
	@Persistent
	private Roles roles;
	@Persistent
	private boolean estado;

	
	public boolean isEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
	}
	public Usuario(){
	}
	public Usuario(Long idUsuario, String nombre, String apellido, String cuenta,String password ,String feNacimiento, String genero,
			String direccion, String ciudad, String telefono,String rol) {
		super();
		this.idUsuario = idUsuario;
		this.nombre = nombre;
		this.apellido = apellido;
		this.cuenta = cuenta;
		this.password=password;
		FeNacimiento = feNacimiento;
		this.genero = genero;
		this.direccion = direccion;
		this.ciudad = ciudad;
		this.telefono = telefono;
		roles= new Roles(rol);
		roles.setEstado(true);
		estado=true;
	}

	public Roles getRoles() {
		return roles;
	}

	public void setRoles(Roles roles) {
		this.roles = roles;
	}

	public Long getIdUsuario() {
		return idUsuario;
	}

	public String getNombre() {
		return nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public String getCuenta() {
		return cuenta;
	}

	public String getFeNacimiento() {
		return FeNacimiento;
	}

	public String getGenero() {
		return genero;
	}

	public String getDireccion() {
		return direccion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public void setCuenta(String cuenta) {
		this.cuenta = cuenta;
	}

	public void setFeNacimiento(String feNacimiento) {
		FeNacimiento = feNacimiento;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
