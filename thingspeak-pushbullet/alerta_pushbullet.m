% Leer temperatura del canal (privado, con API Key)
temperature = thingSpeakRead(3012048, 'Fields', 1, 'NumPoints', 1, 'ReadKey', '1BPCFM1GXZX68PY1');

% Token Pushbullet
token = 'o.1hb48MOf2Mjhw6bPZ8sx9qlsTOBQWlUU';

if ~isnan(temperature)

    if temperature < 3
        url = 'https://api.pushbullet.com/v2/pushes';

        headers = {
            'Access-Token', token;
            'Content-Type', 'application/json'
        };

        data = struct( ...
            'type', 'note', ...
            'title', '❄️ ¡HELADA DETECTADA!', ...
            'body', ['Temperatura actual: ', num2str(temperature), ' °C en Puno. ¡Precaución!'] ...
        );

        options = weboptions('MediaType','application/json','HeaderFields', headers);
        response = webwrite(url, data, options);
        disp(response);

    elseif temperature > 30
        url = 'https://api.pushbullet.com/v2/pushes';

        headers = {
            'Access-Token', token;
            'Content-Type', 'application/json'
        };

        data = struct( ...
            'type', 'note', ...
            'title', '???? ¡CALOR DETECTADO!', ...
            'body', ['Temperatura actual: ', num2str(temperature), ' °C en Puno.'] ...
        );

        options = weboptions('MediaType','application/json','HeaderFields', headers);
        response = webwrite(url, data, options);
        disp(response);
    end

end
