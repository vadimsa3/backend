package by.vs.backend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@CrossOrigin(origins = "http://localhost")  // Разрешить CORS для фронтенда
public class GreetingController {

    @GetMapping("/api/greeting")
    public String greeting() {
        return "Привет с бэкенда на Spring Boot!";
    }

}
