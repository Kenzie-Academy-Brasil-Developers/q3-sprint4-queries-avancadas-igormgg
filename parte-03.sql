SELECT * FROM endereços;

SELECT
	*
FROM 
	endereços e
JOIN
	usuarios u 
	ON e.id = u.endereco_id
ORDER BY
	e.id;
	

SELECT
	r, u
FROM
	usuario_redes_sociais ur
JOIN 
	redes_sociais r 
	ON r.id = ur.rede_social_id
JOIN
	usuarios u 
	ON u.id = ur.usuario_id;



SELECT
	r, u, e
FROM
	usuario_redes_sociais ur
JOIN 
	redes_sociais r 
	ON r.id = ur.rede_social_id
JOIN
	usuarios u 
	ON u.id = ur.usuario_id
JOIN 
	endereços e
	ON e.id = u.endereco_id;



SELECT
	r.nome, u.nome, u.email, e.cidade
FROM
	usuario_redes_sociais ur
JOIN 
	redes_sociais r 
	ON r.id = ur.rede_social_id
JOIN
	usuarios u 
	ON u.id = ur.usuario_id
JOIN 
	endereços e
	ON e.id = u.endereco_id;


SELECT
	r.nome, u.nome, u.email, e.cidade
FROM
	usuario_redes_sociais ur
JOIN 
	redes_sociais r 
	ON r.id = ur.rede_social_id
JOIN
	usuarios u 
	ON u.id = ur.usuario_id
JOIN 
	endereços e
	ON e.id = u.endereco_id
WHERE
	r.nome = 'Youtube';


SELECT
	r.nome, u.nome, u.email, e.cidade
FROM
	usuario_redes_sociais ur
JOIN 
	redes_sociais r 
	ON r.id = ur.rede_social_id
JOIN
	usuarios u 
	ON u.id = ur.usuario_id
JOIN 
	endereços e
	ON e.id = u.endereco_id
WHERE
	r.nome = 'Instagram';


SELECT
	r.nome, u.nome, u.email, e.cidade
FROM
	usuario_redes_sociais ur
JOIN 
	redes_sociais r 
	ON r.id = ur.rede_social_id
JOIN
	usuarios u 
	ON u.id = ur.usuario_id
JOIN 
	endereços e
	ON e.id = u.endereco_id
WHERE
	r.nome = 'Facebook';


SELECT
	r.nome, u.nome, u.email, e.cidade
FROM
	usuario_redes_sociais ur
JOIN 
	redes_sociais r 
	ON r.id = ur.rede_social_id
JOIN
	usuarios u 
	ON u.id = ur.usuario_id
JOIN 
	endereços e
	ON e.id = u.endereco_id
WHERE
	r.nome = 'Tiktok';


SELECT
	r.nome, u.nome, u.email, e.cidade
FROM
	usuario_redes_sociais ur
JOIN 
	redes_sociais r 
	ON r.id = ur.rede_social_id
JOIN
	usuarios u 
	ON u.id = ur.usuario_id
JOIN 
	endereços e
	ON e.id = u.endereco_id
WHERE
	r.nome = 'Twitter';