import com.intuit.karate.junit5.Karate;

public class Actualizarpersona {
	static {
		System.setProperty("karate.ssl", "true");
	}

	@Karate.Test
	Karate testCrearPersona() {
		return Karate.run("classpath:TestChapter/Put/actualizarPersona.feature");
	}
}
