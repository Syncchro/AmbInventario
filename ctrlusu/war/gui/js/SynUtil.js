/*
 * Funcoes uteis para formatacao de tela e fontes
 * Author: Flavio Pimenta (FPI))
 * Version: 1.1.0
 */

/* 
 * CONSTANTES para serem internacionalizadas
 */
var MSG_VALOR_INVALIDO = "valor invalido";

function createTextEvent(element, textToInsert){
	var hidden = element.parentNode.parentNode.parentNode.children[1].firstChild;
	hidden.value = "S";
	var eventObject = document.createEvent('TextEvent');
	eventObject.initUIEvent('keypress', true, true, null, textToInsert);
	element.dispatchEvent(eventObject);
}

/*
 * Funcao para atrivuir valor internacionalizado
 */
function setBundle_MSG_VALOR_INVALIDO(msg) {
	MSG_VALOR_INVALIDO = msg;
}

/*
 * Funcao para faz o scroll para o top da página 
 */
function scrollTop() {
	var listaDiv = document.getElementsByTagName('div');
	for (i = 0; i != listaDiv.length; i++) {
		// funcao left e right esta em gui/js/JavaScriptUtil.js
		if (right(listaDiv[i].id, 10) == 'divCentral') {
			listaDiv[i].scrollTop = 0;
		}
	}
}

/*
 * Ajusta div com id terminado em ''divCentral'' e id = painelPrincipal para
 * ocupar area util da tela
 */
function ajustaAltura() {

	var altura = document.body.clientHeight;
	var largura = document.body.clientWidth;

	var listaLink = document.getElementsByTagName('link');
	// window.alert(listaLink[1].href); //teste para ver se ele retorna o css

	/*
	 * Esta cadeia de IFs é responsável por adequar a altura da tela de acordo
	 * com o tamanho de fonte escolhida pelo usuário para que não fique com a
	 * faixa branca no rodapé da imagem nem barra de rolagem. Precisa-se fazer
	 * testes mais aprofundados, porém no IE 8.0.6001.18702 e firefox 3.6.13 a
	 * diferenciação de navegador se mostrou desnecessária, pois as medidas são
	 * as mesmas.
	 */
	var indiceCSSTamanho;
	// descobrir qual o indice que está o import do CSS de tamanho da fonte
	for (i = 0; i != listaLink.length; i++) {
		if (listaLink[i].href.match('Tamanho')) {
			indiceCSSTamanho = i;
			break;
		}
	}

	if (left(navigator.appName.toLowerCase(), 9) == 'microsoft') {
		if (listaLink[indiceCSSTamanho].href.match('Tamanho8')) {
			altura = altura + 6;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho10')) {
			altura = altura + 3;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho11')) {
			altura = altura;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho12')) {
			altura = altura - 3;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho14')) {
			altura = altura - 6;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho16')) {
			altura = altura - 15;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho18')) {
			altura = altura - 22;
		}
	} else {
		if (listaLink[indiceCSSTamanho].href.match('Tamanho8')) {
			altura = altura + 6;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho10')) {
			altura = altura + 3;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho11')) {
			altura = altura;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho12')) {
			altura = altura - 3;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho14')) {
			altura = altura - 6;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho16')) {
			altura = altura - 15;
		}
		if (listaLink[indiceCSSTamanho].href.match('Tamanho18')) {
			altura = altura - 22;
		}
	}

	altura = altura - 64;

	// var largura = document.body.clientWidth - 4;
	// document.getElementById('painelPrincipal').style.height = altura;
	// document.getElementById('painelPrincipal').style.width = largura;

	var listaDiv = document.getElementsByTagName('div');
	for (i = 0; i != listaDiv.length; i++) {
		// funcao left e right esta em gui/js/JavaScriptUtil.js
		if (right(listaDiv[i].id, 10) == 'divCentral') {
			listaDiv[i].style.height = (altura - 47) + 'px';
		}
		// funcao left e right esta em gui/js/JavaScriptUtil.js
		if (right(listaDiv[i].id, 14) == 'divErroCentral') {
			listaDiv[i].style.height = (altura - 36) + 'px';
		}
		// funcao left e right esta em gui/js/JavaScriptUtil.js
		if (listaDiv[i].className.match('menuCentral')) {
			listaDiv[i].style.height = (altura - 16) + 'px';
			// listaDiv[i].style.width = largura * 0.2;
			// listaDiv[i].style.width = '100%';
		}

		// ajustar altura de acordo com css
		if (listaDiv[i].className.match('ajustaAltura1')) {
			listaDiv[i].style.height = (0.7 * (altura - 76)) + 'px';
		}
		if (listaDiv[i].className.match('ajustaAltura2')) {
			listaDiv[i].style.height = (0.8 * (altura - 76)) + 'px';
		}
		if (listaDiv[i].className.match('ajustaAltura3')) {
			listaDiv[i].style.height = (0.9 * (altura - 76)) + 'px';
		}

	}

	var listaTR = document.getElementsByTagName('tr');
	for (i = 0; i != listaTR.length; i++) {
		if (listaTR[i].className.match('ajustaAltura1')) {
			listaTR[i].style.height = (0.7 * (altura - 76)) + 'px';
		}
		if (listaTR[i].className.match('ajustaAltura2')) {
			listaTR[i].style.height = (0.8 * (altura - 76)) + 'px';
		}
		if (listaTR[i].className.match('ajustaAltura3')) {
			listaTR[i].style.height = (0.9 * (altura - 76)) + 'px';
		}
	}

	var listaTD = document.getElementsByTagName('TD');
	for (i = 0; i != listaTD.length; i++) {
		if (listaTD[i].className.match('icePnlBrdrWest mainBorderLayoutWest')) {
			listaTD[i].style.width = largura * 0.2;
		}
		if (listaTD[i].className.match('ajustaAltura1')) {
			listaTD[i].style.height = (0.7 * (altura - 76)) + 'px';
		}
		if (listaTD[i].className.match('ajustaAltura2')) {
			listaTD[i].style.height = (0.8 * (altura - 76)) + 'px';
		}
		if (listaTD[i].className.match('ajustaAltura3')) {
			listaTD[i].style.height = (0.9 * (altura - 76)) + 'px';
		}
	}
	ajustaTamanhoAbas();
}

function ajustaTamanhoAbas() {
	distanciaGrupo = 0;
	distanciaSubtela = 0;
	fatorReajuste = 0;
	var listaDiv = document.getElementsByTagName('div');
	var listaImg = document.getElementsByTagName('img');

	/*
	 * verifica se é IE, se for ele reajusta as imagens que por algum motivo o
	 * IE coloca espaçamento de 3 px lateral. também reajusta o botão de
	 * navegação.
	 */
	if (left(navigator.appName.toLowerCase(), 9) == 'microsoft') {
		for (k = 0; k != listaImg.length; k++) {
			if (listaImg[k].src.match('esquerdaAbas')
					|| listaImg[k].src.match('direitaAbas')
					|| listaImg[k].src.match('todasAbas')) {
				listaImg[k].style.marginLeft = -3;
				listaImg[k].style.marginRight = -3;
			}
			if (listaImg[k].src.match('abaNavega')) {
				listaImg[k].parentNode.parentNode.style.marginTop = "-16px";
			}
		}
		fatorReajuste = 69;
	} else {
		fatorReajuste = 69;
		/*
		 * for (k = 0; k != listaDiv.length; k++){
		 * if(listaDiv[k].className.match('linhaGrupoConteudo')){ var tamanhoBox =
		 * listaDiv[k].parentNode; listaDiv[k].style.width =
		 * tamanhoBox.offsetWidth - 200 + 'px'; } }
		 */
	}
	for (i = 0; i != listaDiv.length; i++) {
		// ajusta largura das abas do Grupo e subtela
		if (listaDiv[i].className.match('agrupadorAbaSubTela')) {
			var tamanhoDivPrincipal = listaDiv[i].parentNode;
			// alert(tamanhoDivPrincipal.offsetWidth);
			listaDiv[i].style.width = tamanhoDivPrincipal.offsetWidth
					- fatorReajuste + 'px';
			ajustaBotoesAbas(listaDiv[i]);
			mostrarAbaSelecionada(listaDiv[i]);
			// listaDiv[i].style.width = 300 + 'px';
		}
		if (listaDiv[i].className.match('agrupadorAbaGrupo')) {
			var tamanhoDivPrincipal = listaDiv[i].parentNode;
			// alert(tamanhoDivPrincipal.offsetWidth);
			listaDiv[i].style.width = tamanhoDivPrincipal.offsetWidth
					- fatorReajuste + 'px';
			ajustaBotoesAbas(listaDiv[i]);
			mostrarAbaSelecionada(listaDiv[i]);
			// listaDiv[i].style.width = 300 + 'px';
		}
	}
}

/*
 * Ajusta fonte entre 7 opcoes disponiveis parametro acao: 0 = atualiza fonte,
 * +1 = aumenta fonte, -1 = diminui fonte
 */
function ajustaFonte(tamanhoFonte) {

}

/*
 * Função aplicada a textarea para limitar o tamanho do campo
 */
function aplicaMascaraTextArea(obj, tamanho) {
	parentObj = obj.parentNode;
	for (i = 0; i < parentObj.childNodes.length; i++) {
		if (parentObj.childNodes[i].className == 'iceOutTxt') {
			new SizeLimit(obj.id, Number(tamanho), parentObj.childNodes[i].id);
		}
	}

}

/*
 * Função utilizada para aplicar as mascaras em um input qualquer, permite
 * mascaras fixas ou execução de funções pré-definidas. Ex: CEP: #####-###
 * somente minusculas = lowerAll
 * 
 * "capitalize" Creates a field that capitalizes the characters "capitalizeAll"
 * Creates a field that accepts any characters and capitalizes them
 * "capitalizeLetters" Creates a field that accepts only letters, capitalizing
 * them "input" Creates a generic field "inputAll" Creates a field that accepts
 * any characters "inputLetters" Creates a field that accepts only letters
 * "inputNumbers" Creates a field that accepts only numbers "literal" Creates a
 * literal field "lower" Creates a field that transforms the characters to
 * lowercase "lowerAll" Creates a field that accepts any characters and
 * transforms them to lowercase "lowerLetters" Creates a field that accepts only
 * lowercase letters "upper" Creates a field that transforms the characters to
 * uppercase "upperAll" Creates a field that accepts any characters and
 * transforms them to uppercase "upperLetters" Creates a field that accepts only
 * uppercase letters
 * 
 */
function aplicaMascara(obj, mascara) {
	try {
		mascara = eval('fieldBuilder.' + mascara + '()');
	} catch (err) {
		// Try catch criado porque se ocorrer erro durante eval, valor de
		// mascara não é uma função e o fluxo deve continuar sem alterar o valor
		// da variável
		// mascara caso o valor mascar sejauma função a variável já foi
		// alterada.
	}
	if (mascara == '' || obj.indMascara)
		return true;
	new InputMask(mascara, obj.id);
	obj.onfocus = '';
	obj.indMascara = true;
	return true;
}
/*
 * Função chamada para aplicar mascaras do tipo decimal na
 */
function aplicaMascaraDecimal(obj, numDecimal, formato) {
	if (numDecimal == '0') {
		new InputMask(JST_MASK_DECIMAL, obj.id);
	} else {
		var numValor = new NumberParser(numDecimal, ",", ".", true);
		numValor.useCurrency = false;
		numValor.negativeParenthesis = false;
		numValor.currencyInside = true;
		new NumberMask(numValor, obj.id, 19);
	}
	return true;
}

function aplicaMascaraNumero(obj, numMax, indNegativo) {

	var numValor = new NumberParser(0, ",", ".", true);
	numValor.useCurrency = false;
	numValor.negativeParenthesis = false;
	numValor.currencyInside = true;
	numValor.useGrouping = false;
	var numMask = new NumberMask(numValor, obj.id, numMax);

	if (indNegativo == 'false') {
		numMask.allowNegative = false;
	}
}

/*
 * funcao para validar texto digitado
 */
function validaCampo(obj, mascara) {
	if (mascara == '' || mascara == undefined)
		return false;
	if (!obj.mask.isComplete() && (obj.value.length > 0)) {
		alert(MSG_VALOR_INVALIDO);
		obj.value = '';
	}
}

/*
 * funcao para limpar listaCriada ao mudar de pagina esta funcao tambem eh
 * chamada pelo metodo :
 * br.com.synchro.framework.gui.presentation.managedbean.portal.MenuTreeItem.open()
 */
function limpaListaCriada() {
	listaCriada = ';';
}

/*
 * Funcoes de inicializacao da pagina Sao executadas quando a pagina eh
 * carregada pela primeira vez
 */
window.onload = function() {
	ajustaAltura();
	limpaListaCriada();
}

/*
 * Utilizado pela classe de serviço para abrir popup quando serviço for do tipo
 * outputLink.
 */
function openPopup(url, altura, largura) {
	var win = window
			.open(
					url,
					'nova',
					'toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,left=20,top=100,resizable=yes,width='
							+ largura + ',height=' + altura);
	win.focus();
}

/*
 * Utilizado pela classe de serviço para abrir popup quando serviço for do tipo
 * outputLink.
 */
function openLov(url, altura, largura) {
	var win = window
			.open(
					url,
					'lovPopup',
					'toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,left=20,top=100,resizable=yes,width='
							+ largura + ',height=' + altura);
	win.focus();
}

/*
 * Utilizado pela classe de serviço para abrir popup quando serviço for do tipo
 * outputLink.
 */
function closeLov() {
	for (i = 0; i < window.parent.opener.document.forms.length; i++) {
		if (window.parent.opener.document.forms[i].id == 'atualizaTelaPrincipal'
				|| window.parent.opener.document.forms[i].id == 'formLov') {
			window.parent.opener.document.forms[i].submit();
			break;
		}
	}
	window.close();
}

/*
 * Utilizado pela classe de serviço para fechar popup quando serviço.
 */
function closePopup() {
	for (i = 0; i < window.parent.opener.document.forms.length; i++) {
		if (window.parent.opener.document.forms[i].id == 'atualizaTelaPrincipal') {
			window.parent.opener.document.forms[i].submit();
			break;
		}
	}
	window.close();
}

/*
 * Script criado para armazenar objeto clicado pelo usuário quando acionado o
 * detalhe do Grid.
 */
var objGridDetlahe = null;
function guardaObj(obj) {
	objGridDetlahe = obj.parentNode;
}

/*
 * Método que cria dinâmicamente um registro na lista para visualização do
 * complemento do registro que não seja possível visualizar na própria lista.
 */
function abreDetalheGrid(html) {
	var obj = objGridDetlahe;
	var objChild0 = objGridDetlahe.childNodes[0].childNodes[0];
	var objChild1 = objGridDetlahe.childNodes[0].childNodes[1];
	var row = obj.parentNode.parentNode;
	var table = row.parentNode;
	var linha = row.rowIndex;
	var listaCelulas = document.getElementById(obj.id + "idViewGrid");
	if (listaCelulas == null) {
		var cells = row.cells.length;
		var newRow = table.insertRow(linha);
		var newCell0 = newRow.insertCell(0);
		var newCell1 = newRow.insertCell(1);
		newCell1.colSpan = cells - 1;
		newCell1.id = obj.id + "idViewGrid";
		newCell1.className = "detlaheGrid";
		newCell1.innerHTML = html;
		objChild1.style.display = '';
		objChild0.style.display = 'none';
	} else {
		var rowDelete = listaCelulas.parentNode;
		table.deleteRow(rowDelete.rowIndex - 1);
		objChild1.style.display = 'none';
		objChild0.style.display = '';
	}
}

/*
 * Método acionado quando a lista é alterada para limpa
 */
function clearDetalheGrid() {
	var celulas = document.getElementsByTagName('td');
	for (i = 0; i < celulas.length; i++) {
		if (right(celulas[i].id, 10) == 'idViewGrid') {
			var rowDelete = celulas[i].parentNode;
			var table = rowDelete.parentNode;
			table.deleteRow(rowDelete.rowIndex - 1);
		}
	}
}

/*
 * Função criada para popular um campo com valor default caso o valor do campo
 * esteja vazio.
 */
function preencheValorDefault(obj, valor) {
	if (obj.value == '' || obj.value == null) {
		obj.value = valor;
	}
}

function fisheye(branch) {
	var feOrig = "16px";
	var props = {
		i : {
			width : 32,
			height : 32,
			top : -16,
			left : -102
		},
		o : {
			width : 16,
			height : 16,
			top : 0,
			left : -80
		}
	};
	dojo.anim(branch, props.i, 175);

}

function feReset(branch) {
	var props = {
		i : {
			width : 32,
			height : 32,
			top : -16,
			left : -102
		},
		o : {
			width : 16,
			height : 16,
			top : 0,
			left : -80
		}
	};
	dojo.anim(branch, props.o, 175, null, null, 75);

}

/*
 * Trocar a visibilidade de exibir todas as abas.
 */
function trocarVisibilidadeTodasAbas(obj) {
	var divAbas = obj.parentNode.parentNode.getElementsByTagName('div');
	var divPopup;
	for (w = 0; w != divAbas.lenght; w++) {
		if (divAbas[w].className.match('divTodasAbasPopup')) {
			divPopup = divAbas[w];
			break;
		}
	}

	if (divPopup.style.display == 'none') {
		divPopup.style.display = "";
		var posX = findPosX(obj);
		var posY = findPosY(obj);
		var fatorReajuste = 0;
		divPopup.style.position = "absolute";
		if (left(navigator.appName.toLowerCase(), 9) == 'microsoft') {
			fatorReajuste = 40;
		} else {
			fatorReajuste = 23;
		}
		divPopup.style.right = document.body.clientWidth - posX - fatorReajuste;
		// divPopup.style.top = posY + 23; //em testes no firefox 3.6.15 e IE 8
		// se mostrou inutil
	} else {
		divPopup.style.display = "none";
	}
}

function trocarVisibilidadeDIV(obj) {
	if (obj.style.display == 'none') {
		obj.style.display = "";
	} else {
		obj.style.display = "none";
	}
}

/*
 * encontra a posicao X de um objeto
 */
function findPosX(obj) {
	var curleft = 0;
	if (obj.offsetParent)
		while (1) {
			curleft += obj.offsetLeft;
			if (!obj.offsetParent)
				break;
			obj = obj.offsetParent;
		}
	else if (obj.x)
		curleft += obj.x;

	return curleft;
}

/*
 * encontra a posicao Y de um objeto
 */
function findPosY(obj) {
	var curtop = 0;
	if (obj.offsetParent)
		while (1) {
			curtop += obj.offsetTop;
			if (!obj.offsetParent)
				break;
			obj = obj.offsetParent;
		}
	else if (obj.y)
		curtop += obj.y;

	return curtop;
}

/*
 * variaveis para controlar a movimentacao das abas
 */
var distanciaGrupo = 0;
var distanciaSubtela = 0;

/*
 * Função que faz o efeito de ir para a esquerda com as abas.
 */
function esquerda(styleClassDivPai) {
	var listaDivs = document.getElementsByTagName('div');
	var listaDivsAbas;
	var divAbas;

	for (i = 0; i != listaDivs.length; i++) {
		if (listaDivs[i].className.match(styleClassDivPai)) {
			// recupero todas as abas
			listaDivsAbas = listaDivs[i].childNodes[0].childNodes[0]
					.getElementsByTagName('div');
			divAbas = listaDivs[i];
		}
	}

	var distanciaIndex = listaDivsAbas[0].style.left.indexOf('p');
	var distancia = left(listaDivsAbas[0].style.left, distanciaIndex);
	
	
	// verifico se o botao de ir para a esquerda está desabilitado, caso sim,
	// nao executo a ação.
	var botaoEsquerda = listaDivsAbas[0].parentNode.parentNode.parentNode.parentNode.childNodes[0];
	if (!botaoEsquerda.src.match('-des')) {
		if (distancia == null){
			distancia = 0;
		}
		distancia = parseInt(distancia) + 148;
		for (i = 0; i != listaDivsAbas.length; i++) {
			listaDivsAbas[i].style.left = distancia;
		}
	}
	// ajusto os botoes, para desabilitar ou desabilitar
	ajustaBotoesAbas(divAbas);
}

/*
 * Função que faz o efeito de ir para a direita com as abas. @param
 * styleClassDivPai
 */
function direita(styleClassDivPai) {
	var listaDivs = document.getElementsByTagName('div');
	var listaDivsAbas;
	var divAbas;

	for (i = 0; i != listaDivs.length; i++) {
		if (listaDivs[i].className.match(styleClassDivPai)) {
			// recupero as divs das abas
			listaDivsAbas = listaDivs[i].childNodes[0].childNodes[0]
					.getElementsByTagName('div');
			divAbas = listaDivs[i];
		}
	}

	var distanciaIndex = listaDivsAbas[0].style.left.indexOf('p');
	var distancia = left(listaDivsAbas[0].style.left, distanciaIndex);
	
	// recupero o botao da direita, para ver se ele esta desabilitado
	var botaoDireita = listaDivsAbas[0].parentNode.parentNode.parentNode.parentNode.childNodes[2];
	if (!botaoDireita.src.match('-des')) {
		if (distancia == null){
			distancia = 0;
		}
		distancia = distancia - 148;
		for (i = 0; i != listaDivsAbas.length; i++) {
			listaDivsAbas[i].style.left = distancia;
		}
	}
	// habilita / desabilita os botes de ir para a esquerda / direita
	ajustaBotoesAbas(divAbas);
}

function ajustaBotoesAbas(divAbas) {
	// recupero a primeira e a uiltima aba, para verificar as suas respectivas
	// posicoes
	var divPrimeiraAba = divAbas.childNodes[0].childNodes[0].childNodes[0];
	var divUltimaAba = divAbas.childNodes[0].childNodes[0].lastChild;

	var botaoDireita = divAbas.parentNode.childNodes[2];
	var botaoEsquerda = divAbas.parentNode.childNodes[0];

	// caso a primeira aba tenha a posicao nao deinida ou igual 0 entao o botao
	// esquerda deve estar desabilitado.
	if (divPrimeiraAba.style.left == '0' || divPrimeiraAba.style.left == '0pt'
			|| divPrimeiraAba.style.left == '0px'
			|| divPrimeiraAba.style.left == '') {
		botaoEsquerda.src = './gui/images/esquerdaAbas-des.png';
		botaoEsquerda.style.cursor = '';
	} else {
		botaoEsquerda.src = './gui/images/esquerdaAbas.png';
		botaoEsquerda.style.cursor = 'pointer';
	}

	// caso a posicao X da ultima aba mais o seu tamanho estiver dentro do
	// quadrado de exibicao das abas eu habilito/desabilito o botao da esquerda
	var posicaoFinalUltimaAba = findPosX(divUltimaAba) + 148;
	var posicaoFinalDivExibirAbas = (findPosX(divPrimeiraAba.parentNode.parentNode.parentNode) + divPrimeiraAba.parentNode.parentNode.parentNode.offsetWidth);
	if (posicaoFinalUltimaAba < posicaoFinalDivExibirAbas) {
		botaoDireita.src = './gui/images/direitaAbas-des.png';
		botaoDireita.style.cursor = '';
	} else {
		botaoDireita.src = './gui/images/direitaAbas.png';
		botaoDireita.style.cursor = 'pointer';
	}
}

/*
 * Deixo a aba que está selecionada sempre visivel para o usuario no espaço em
 * que mostra as abas
 */
function mostrarAbaSelecionada(divAbas) {
	var divComAbas = divAbas.childNodes[0].childNodes[0]
			.getElementsByTagName('div');
	var posicaoFinalDivExibirAbas = (findPosX(divAbas) + divAbas.offsetWidth);
	var abaSelecionada;

	for (y = 0; y != divComAbas.length; y++) {
		if (divComAbas[y].className.match('abaSelecionada')) {
			// recuepro a aba que está selecionada
			abaSelecionada = divComAbas[y];
		}
	}

	while (true) {
		// mando ir para a direita ate a aba estar completamente visivel
		var posicaoFinalAbaSelecionada = findPosX(abaSelecionada) + 148;
		if (posicaoFinalAbaSelecionada < posicaoFinalDivExibirAbas) {
			break;
		} else {
			if (divAbas.className.match('agrupadorAbaGrupos')) {
				direita('agrupadorAbaGrupos');
			} else {
				direita('agrupadorAbaSubTela');
			}
		}
	}
}
