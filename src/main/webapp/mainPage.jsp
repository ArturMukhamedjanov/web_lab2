<%@ page import="model.Model" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lab2</title>
    <style>
        <%@include file='style.css' %>
    </style>
    <!--<link href="style.css" rel="stylesheet" type="text/css"/>-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
<form id="form" method="POST">
    <table class="table">
        <thead>
        <tr>
            <th colspan="2" class="table"> <!-- заголовок -->
                <div class="header-text">Мухамеджанов Артур Илдусович, P3214, вариант 2475 </div>
            </th>
        </tr>
        </thead>
        <tbody>
        <tr class="plot"> <!-- здесь будет график -->
            <td class="plot" colspan="2">
                <div class="graphic card">
                    <p style="visibility: hidden">graphic</p>
                    <%@ include file="grafic.html" %>
                    <circle id="point" r="3" cx="125" cy="125" fill="white" stroke="#641AD5" visibility="visible"></circle>
                    <jsp:include page="table.jsp" />
                    </svg>
                </div>
            </td>
        </tr>
        <tr> <!-- здесь будет выбор из списка X -->
            <td class="table">
                <div id="label_x">Выберите X</div>
            </td>
            <td class="table">
                <section class="check-values x">
                    <select id="x" name="x">
                        <option id="q" value="-3">-3</option>
                        <option id="w" value="-2">-2</option>
                        <option id="e" value="-1">-1</option>
                        <option id="r" value="0">0</option>
                        <option id="t" value="1">1</option>
                        <option id="y" value="2">2</option>
                        <option id="u" value="3">3</option>
                        <option id="i" value="4">4</option>
                        <option id="o" value="5">5</option>
                    </select>
                </section>
            </td>
        </tr>

        <tr> <!-- здесь будет ввод Y -->
            <td class="table">
                <div id="label_y">Y:</div>
            </td>
            <td class="table">
                <input type="text" name="Y" id="Y_field" placeholder="[-3..3] " class="qw">
            </td>
        </tr>

        <tr> <!-- здесь будет выбор по кнопке R -->
            <td class="table">
                <div id="label_r">R:</div>
            </td>
            <td class="table">
                <input type="button" name="R" value="1" onclick="setR(1)" class="qw2">
                <input type="button" name="R" value="1.5" onclick="setR(1.5)" class="qw2">
                <input type="button" name="R" value="2" onclick="setR(2)" class="qw2">
                <input type="button" name="R" value="2.5" onclick="setR(2.5)" class="qw2">
                <input type="button" name="R" value="3" onclick="setR(3)" class="qw2">
                <span id="notSelectedR" style="color: red;">R не выбрано!</span>
                <input name="R" id="R_field" type="hidden">
            </td>
        </tr>

        <div class="X_coordinate">
            <input name="Xgr" id="X_field" type="hidden">
        </div>

        <tr> <!-- здесь будет кнопка подтверждения -->
            <td class="table">
                <label>Ввод значений</label>
            </td>
            <td>
                <button type="submit" class="button" id="submit"
                        style="margin-top: 20px ; margin-left: 20px; font-family: Arial; border-radius: 2px"> Отправить
                </button>
                <button type="submit" id="submit2" style="display: none; "></button>
            </td>
        </tr>

        <tr>
            <table border="1px" class="result-table" style="margin-top: 10px; color: antiquewhite; box-shadow: #db2d2d;font-family: 'Arial Black';font-size: 20px">
                <thead>
                <td id="tbX"> X</td>
                <td id="longY"> Y</td>
                <td id="tbR"> R</td>
                <td style="  width: 60px;"> RESULT </td>

                </thead>
                <tbody id="table_out">
                <ul>
                    <%
                        if (!Model.points.isEmpty()) {
                            for (int i = Model.points.size()-1; i >= 0; i--) {
                                out.println(Model.points.get(i).toString());
                            }
                        }
                    %>
                </ul>
                </tbody>
            </table>
        </tr>
        </tbody>
    </table>
</form>
<script type="text/javascript">
    <%@include file="/valid/validation.js"%>
</script>

<script type="text/javascript">
    <%@include file="/valid/send_get.js"%>
</script>
<script type="text/javascript">
    <%@include file="/valid/click.js"%>
</script>
</body>
</html>