package modelos;
import javax.jdo.annotations.*;
import java.lang.Long;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Usuario {

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
	private String telefono;
	@Persistent
	private String password;
	@Persistent
	private Roles roles;
	@Persistent
	private double nota1;
	@Persistent
	private double nota2;
	@Persistent
	private double nota3;
	@Persistent
	private double nota4;
	@Persistent
	private double nota5;
	@Persistent
	private double promedio;
	@Persistent
	private boolean estado;
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long idUsuario;
	
	public Usuario(){
		this.setEstado(true);
	}
	public Usuario(Long idUsuario, String nombre, String apellido, String cuenta,String password ,String feNacimiento, String genero,
			String direccion, String telefono,String rol) {
		super();
		this.idUsuario = idUsuario;
		this.nombre = nombre;
		this.apellido = apellido;
		this.cuenta = cuenta;
		this.password=password;
		this.FeNacimiento = feNacimiento;
		this.genero = genero;
		this.direccion = direccion;
		this.telefono = telefono;
		this.roles= new Roles(rol);
		this.setEstado(true);
	}
	public boolean isEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
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

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public double getNota1() {
		return nota1;
	}
	public void setNota1(double nota1) {
		this.nota1 = nota1;
	}
	public double getNota2() {
		return nota2;
	}
	public void setNota2(double nota2) {
		this.nota2 = nota2;
	}
	public double getNota3() {
		return nota3;
	}
	public void setNota3(double nota3) {
		this.nota3 = nota3;
	}
	public double getNota4() {
		return nota4;
	}
	public void setNota4(double nota4) {
		this.nota4 = nota4;
	}
	public double getNota5() {
		return nota5;
	}
	public void setNota5(double nota5) {
		this.nota5 = nota5;
	}
	public double getPromedio() {
		return promedio;
	}
	public void setPromedio(double promedio) {
		this.promedio = promedio;
	}
	public String getTelefono() {
		return telefono;
	}
	

}