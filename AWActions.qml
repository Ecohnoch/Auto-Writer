import QtQuick 2.7

Item {
    id: actions

    function runAction(index){
        if(index === 0){
            return action0
        }else if(index === 1){
            return action1
        }else if(index === 2){
            return action2
        }else if(index === 3){
            return action3
        }
    }

    // 简单模板们
    function action0(textarea){
        // 无模板
        textarea.text = ""
    }

    function action1(textarea){
        // 模板1
        textarea.text = "(介绍一下故事发生的时间和人物？)\n(说一说故事发生的地点、天气，描绘一下？)\n(有没有一些值得注意的客观条件呢？比如是一个特殊的节日，对节日进行一两句话的介绍)\n(引入一下故事的内容？)\n"
    }

    function action2(textarea){
        // 模板2
        textarea.text = "今天窗外有些灰暗，总觉得(.......)，有时候会突然的想起(........)\n总有人说，(.........)，不过那一天，还真的是(..........)\n\n"
    }

    function action3(textarea){
        // 模板3
        textarea.text = "这几天心里颇不宁静。今晚(在院子里坐着乘凉)\n(忽然想起日日走过的荷塘，在这满月的光里，总该另有一番样子吧。)\n(月亮渐渐地升高了，墙外马路上孩子们的欢笑，已经听不见了)\n(妻在屋里拍着闰儿，迷迷糊糊地哼着眠歌。我悄悄地披了大衫，带上门出去。)\n"
    }

    function actionYourself(textarea, text){
        // 自定义模板
        textarea.text = text
    }

}
