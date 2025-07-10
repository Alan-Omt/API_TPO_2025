package com.api.e_commerce.security;

import java.io.IOException;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@Component
@Order(1) // Asegura que este filtro se ejecute antes de otros filtros de seguridad
public class JwtFilter extends OncePerRequestFilter  {
    @Autowired
    private JwtUtil jwtUtil;

;
    // 🧭 Determina si se debe aplicar el filtro JWT
    @Override
    protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {
        String path = request.getRequestURI();
            // 📝 Logs de depuración
        boolean ignorar = path.matches("^/$") ||
                          path.matches("^/api/productos.*") ||
                          path.matches("^/api/categorias.*") ||
                          path.matches("^/api/usuarios/(login|register|public).*") ||
                          path.matches("^/api/auth.*") ||
                          path.matches("^/api/debug.*"); // opcional para testing

        System.out.println("RAW URI → " + request.getRequestURI());
        System.out.println("FULL URL → " + request.getRequestURL());
        System.out.println("PATH IGNORADO → " + ignorar);
        System.out.println("Evaluando filtro para: " + path);
        System.out.println("¿Ignorar filtro?: " + ignorar);
        return ignorar;

    }


    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String header = request.getHeader("Authorization");

        if (header != null && header.startsWith("Bearer ")) {
            String token = header.substring(7);
            if (jwtUtil.validateToken(token)) {
                String username = jwtUtil.getUsername(token);
                Set<String> roles = jwtUtil.getRoles(token);
                var authorities = roles.stream().map(SimpleGrantedAuthority::new).collect(Collectors.toList());
                var auth = new UsernamePasswordAuthenticationToken(username, null, authorities);
                SecurityContextHolder.getContext().setAuthentication(auth);
            }
        }
        
        filterChain.doFilter(request, response);
    } 
}