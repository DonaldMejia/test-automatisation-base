import com.intuit.karate.junit5.Karate;

public class CrearPersona {
	static {
		System.setProperty("karate.ssl", "true");
	}

	@Karate.Test
	Karate testCrearPersona() {
		return Karate.run("classpath:TestChapter/Post/crearPersona.feature");
	}
}
