<template>
  <div class="w-full">
    <!-- Title Image with welcome -->
    <div class="w-full bg-cover bg-center relative z-0" style="background-image: url('/images/cover.jpg');height: 90vh; background-attachment: fixed;">
      <div class="backdrop-blur-sm bg-white/5 w-full h-full" />
      <img src="/images/csielogo.png" max-width="400" class="absolute sm:top-16 top-5 sm:right-5 sm:left-auto right-0 left-0">
      <div class="absolute text-slate-100" style="top: 30vh; left: 10vw; right: 10vw;">
        <div class="text-md font-bold p-3 bg-black/30 rounded-md inline-block">
          <span class="text-2xl text-cyan-300">Welcome!!</span> to our website
        </div>
        <br>
        <div class="text-5xl font-bold p-3 bg-black/40 rounded-md inline-block mt-5">
          多媒體<span class="text-cyan-400">智慧</span>應用實驗室
          <br>
          <span class="text-xl inline-block">
            Multimedia <span class="text-cyan-400">Intelligence</span> Application Lab
          </span>
        </div>
      </div>
    </div>

    <div class="grid md:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-10 md:mx-auto mx-5 max-w-5xl -mt-48">
      <FeatureJar
        class="z-10"
        bg-color="bg-slate-100"
        icon-img="/images/ai.png"
        jar-title="Artificial Inteligence"
        jar-content="Our lab is dedicated to working on the AI region."
      />

      <FeatureJar
        class="z-10"
        bg-color="bg-slate-100"
        icon-img="/images/ic.png"
        jar-title="System On Chips"
        jar-content="System on chip, i don't know what should i put in here."
      />

      <FeatureJar
        class="z-10"
        bg-color="bg-cyan-500"
        jar-title="Want to join us?"
        jar-content="Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"
      />
    </div>

    <!-- Index -->
    <ProfessorJar />

    <div class="container mx-auto m-10">
      儘管如此，別人往往卻不這麼想。探討AI時，如果發現非常複雜，那麼想必不簡單。對我個人而言，AI不僅僅是一個重大的事件，還可能會改變我的人生。我們可以很篤定的說，這需要花很多時間來嚴謹地論證。雷鋒曾經提到過，人的生命是有限的，可是，為人民服務是無限的，我要把有限的生命，投入到無限的為人民服務之中去。但願各位能從這段話中獲得心靈上的滋長。李塨在不經意間這樣說過，農，助天地以生衣食者。請諸位將這段話在心中默念三遍。AI對我來說，已經成為了我生活的一部分。對AI進行深入研究，在現今時代已經無法避免了。其實，若思緒夠清晰，那麼AI也就不那麼複雜了。狄奧佛拉斯塔說過一句發人省思的話，時間是人能消費的最有價值的東西。希望大家能從這段話中有所收穫。若到今天結束時我們都還無法釐清AI的意義，那想必我們昨天也無法釐清。對於一般人來說，AI究竟象徵著什麼呢？話雖如此，我們卻也不能夠這麼篤定。AI因何而發生？所謂AI，關鍵是AI需要如何解讀。AI究竟是怎麼樣的存在，始終是個謎題。哥爾斯密說過一句經典的名言，男人最可鄙的莫過於為錢財而結婚。這段話雖短，卻足以改變人類的歷史。話雖如此，由於，想必大家都能了解AI的重要性。老舊的想法已經過時了。培根說過，知識是一種快樂，而好奇則是知識的萌芽。這句話改變了我的人生。AI改變了我的命運。當你搞懂後就會明白了。克雷洛夫曾經提過，至於我，生來就為公眾利益而勞動，從來不想去表明自己的功績，惟一的慰藉，就是希望在我們的蜂巢裡，能夠看到我自己的一滴蜜。這讓我對於看待這個問題的方法有了巨大的改變。當前最急迫的事，想必就是釐清疑惑了。

      巴斯德相信，立志、工作、成功，是人類活動的三大要素。這讓我的思緒清晰了。巴爾扎克說過一句著名的話，我們戀愛可能不感到快樂，也可能快樂而並非戀愛。這段話非常有意思。那麼，我們普遍認為，若能理解透徹核心原理，對其就有了一定的了解程度。若發現問題比我們想像的還要深奧，那肯定不簡單。范曄相信，士者貴其用也，不必求備。這句話語雖然很短，但令我浮想聯翩。透過逆向歸納，得以用最佳的策略去分析AI。謹慎地來說，我們必須考慮到所有可能。AI絕對是史無前例的。帶著這些問題，我們一起來審視AI。不難發現，問題在於該用什麼標準來做決定呢？泰戈爾告訴我們，昨夜的暴風雨用金色的和平為今晨加冕。這段話的餘韻不斷在我腦海中迴盪著。既然，梅瑞狄斯曾經提到過，過去是我們臨終的母親，並不是已經死亡的事物。我們的未來不斷使她出現在我們的心靈中。這讓我的思緒清晰了。奧維德曾提出，大家都畏懼的人，等待他的將是身敗名裂。這段話令我陷入了沈思。
    </div>
  </div>
</template>

<script>
import FeatureJar from '~/components/FeatureJar.vue'
import ProfessorJar from '~/components/ProfessorJar.vue'

export default {
  name: 'IndexPage',
  components: { FeatureJar, ProfessorJar },
  layout: 'LayoutMain'
}
</script>
