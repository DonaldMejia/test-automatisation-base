import com.intuit.karate.junit5.Karate;

public class EliminaPersona {
	static {
		System.setProperty("karate.ssl", "true");
	}

	@Karate.Test
	Karate testEliminarPersona() {
		return Karate.run("classpath:TestChapter/Del/eliminarPersona.feature");
	}
}
