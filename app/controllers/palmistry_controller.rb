class PalmistryController < ApplicationController
  skip_before_filter :verify_authenticity_token ,:only=>[:result]

  def appraisal
  end

  def result
    @uname = params[:uname]

    case params[:love]
    when '0' then
      @love = @uname + " さんは突発的な恋愛をするタイプです。<br>
      人を好きになるまでが早く、一目惚れタイプです。<br>
      出会ってから付き合うまでに期間が短いタイプです。<br>
      合コンや友達の紹介など出会いの数だけのチャンスを掴み取ることができます。<br>
      ただ、熱しやすく冷めやすい恋愛をします。<br>
      相手のことが嫌になるとすぐに冷めてしまします。<br>
      恋愛の数は多いですが、長く続けるのは難しいです。<br>
      そのため、１年以上続く恋愛はめったにありません。<br>
      長く続けることができる恋愛は運命の人だけです。<br>
      多くの恋愛から運命の人を見つけて下さい。<br>"
    when '1' then
      @love = @uname + " さんはゆっくり落ち着いた恋愛をします。<br>
      相手を好きになりまでに時間がかかるタイプです。<br>
      好きになると相手のことがとても大事にします。<br>
      愛情が深く、相手のためにいろいろと頑張ることでしょう。<br>
      相手の気持を考えながら、自分の気持もコントロールできるため、恋愛の仕方が上手な人です。<br>
      結婚したらとても良い奥さんになるタイプです。<br>"
    when '2' then
      @love = @uname + " さんは恋愛には消極的な人です。<br>
      あまり感情を表に出さないタイプなので、好きな人に好きと言えないです。<br>
      そのため、相手に気持ちが伝わりにくいことが多く、すれ違いなどが多いでしょう。<br>
      せっかく両思いでも結果的に付き合わないということもあります。<br>
      チャンスを逃してしまうこともあります。<br>
      恋愛がうまくいくかどうかは相手次第になるでしょう。<br>
      あまり感情を表に出さないので、相手にからすると何を考えているのかわからないこともあります。<br>
      素直になることで恋愛を成功させることができます。<br>
      伝えづらいことは手紙やメールなど文章にして伝えることが良いでしょう。<br>"
    when '3' then
      @love = @uname + " さんは情が深い人です。<br>
      相手を思いやる気持ちがとても強く、相手のために一生懸命になれます。<br>
      ゆっくりじっくり愛を育むことになるので、一目惚れはしないタイプです。<br>
      長い間ずっと一緒にいた人や告白された後に好きになっていくことでしょう。<br>
      相手への気持ちが強いため、嫉妬しやすいタイプでもあります。<br>
      周りが見えなくなることもあるので注意が必要です。<br>
      相手を信じ過ぎることもあるので、騙されやすいタイプでもあります。<br>
      お金の貸し借りは可能な限りしないようにして下さい。<br>
      トラブルの原因になります。<br>"
    when '4' then
      @love = @uname + " さんは相手の気持ちになれる優しい人です。<br>
      涙もろい面もあり、人情深い人でしょう。<br>
      人のために頑張ることができる人です。<br>
      周りから相談されやすいタイプの人でしょう。<br>
      ただ、すごく優しいためダメな人を好きになりやすくなります。<br>
      自分がいなきゃダメだ。相手のためになるためには自分が必要だと考えるタイプです。<br>
      尽くすタイプでもありますが、お節介なところもあります。<br>
      人に優しくするのは良いことですが、相手の成長のためにも見守ることも大事です。<br>
      すべて" + @uname + " さんがやるのではなく、相手にも努力をさせるようにしてください。<br>
      そうすることで良い人間関係を築くことができるでしょう。<br>"
    end

    love_etc = params[:love_etc]
    if love_etc then
      love_etc.keys.each do |select_num|
        case select_num
        when '0' then
          @love_etc_happy = @uname + " さんは人を幸せにする力を持っています。<br>" + @uname + " さんの周りの人はとても幸せな気持ちになることでしょう。<br> 結婚するなら" + @uname + " さんのような人がすごく良いでしょう。<br>"
        when '1' then
          @love_etc_many = @uname + " さんは数多くの恋愛を経験する人です。<br>
          恋愛の切り替えが早く、失恋してもすぐに次の恋愛に行ける人です。<br>
          好きな人がよく変わる人だと思われやすいですが、切り替えが早いのは良いことです。<br>
          次のチャンスを逃さないためにも、恋愛のチャンスがあるならば飛び込むことも良いことでしょう。<br>"
        when '2' then
          @love_etc_slow =
          @uname + " さんはおっとりタイプの性格をしてます。<br>
          周りから天然っぽいと思われていることが多いでしょう。<br>
          ゆっくりマイペースなので、周りからの影響を受けにくいです。<br>
          また、あまり怒りにくい性格でもあります。<br>
          自分のペースを大事にすることが精神衛生上によろしいでしょう。<br>"
        end
      end
    end

    @life = params[:life]
    case params[:life]
    when '0' then
      @life = @uname + " さんは生命力が強い人です。<br>
      徹夜してもピンピンしているような人でしょう。<br>
      体力の続く限り頑張ることができる人です<br>"
    when '1' then
      @life = @uname + " さんは生命力は弱くはありません。<br>
      体力には問題はありませんが、たまに病気になってしまします。<br>
      年に一度風邪を引いたりします。<br>
      ストレスからくる病気にも注意が必要です。<br>"
    when '2' then
      @life = @uname + "さんは病気にも注意が必要です。<br>
      無理をすると体調を崩すことになります。<br>
      体調管理を優先的に行い、あまり無理のないようにして下さい。<br>
      疲れている時はちゃんと休むようにして下さい<br>"
    end

    case params[:life_etc]
    when '0' then
      @life_etc = @uname + " さんは実家から遠くに離れる人でしょう。<br>
      簡単には帰れない場所なので、海外など飛行機でしか行けないような場所に住むことになります。<br>
      海外の人と結婚する可能性があるでしょう。<br>"
    when '1' then
      @life_etc = @uname + " さんはいろいろなところに行く人です。<br>
      単身赴任や出張などが多く、いろいろな場所に飛び回るようなことになります。<br>
      また、別荘を持ってたり住む場所が複数あることもあるでしょう。<br>"
    when '2' then
      @life_etc = @uname + " さんは地元に残る人です。<br>
      地元が大好きで、実家から出ない可能性が高いです。<br>
      親と一緒に暮らすことになるため、家を継ぐ可能性があります。<br>"
    end

    case params[:brain]
    when '0' then
      @brain = @uname + " さんは論理的に考える左脳タイプの人です。<br>
      物事を順序立てて考えるのが得意で、計画を立てて実行すると良い結果が出ます。<br>
      また、物事を客観的に見ることができるため、なにが正しいか正しくないかを判断することができます。<br>
      現実主義者なので周りからは夢のない人だと思われがちです。<br>
      相手を説得する力に長けているので、営業などサービス業なども向いています。<br>"
    when '1' then
      @brain = @uname + " さんは感覚的に捉える右脳タイプの人です。<br>
      五感を使った仕事が向いています。<br>
      音楽や料理、マッサージ師、デザイナーなど人によって五感のどの部分が優れているかは異なりますが、五感を使った仕事が良いでしょう。<br>
      感覚的に捉えるのが得意なため、人の気持ちがよく分かる人でもあります。<br>
      なにか相手に伝えたい時は絵や音楽など視覚や聴覚などを使って伝えることが良いでしょう。<br>"
    when '2' then
      @brain = @uname + " さんはなんでも平均的にできる人です。<br>
      なんでもできるタイプなので、なにをやっても成功させることができます。<br>
      役所などの公務員みたいにいろいろな部署に配属され、いろいろなことが出来る必要がる仕事が向いています。<br>
      ただ、こういうタイプの人は全てが平均的にできるため、誰にも負けない特技のようなものを見つけるのに時間がかかります。<br>
      自分のやりたいこと、楽しいことを見つけ、自分にしかできないようなことを見つけることで出世していくことでしょう。<br>"
    when '3' then
      @brain = @uname + " さんは直感タイプの人です。<br>
      感じたままに行動すると成功しやすいです<br>
      スポーツ選手など瞬時に判断するよな仕事が向いています。<br>
      瞬時に答えを出すことができるため、本番に強いタイプです。<br>
      瞬発力が必要な仕事が向いていることでしょう。<br>"
    end

    case params[:brain_life]
    when '0' then
      @brain_life = @uname + " さんは常識がある人です。<br>
      周りの状況にあわせて行動することができます。<br>
      臨機応変に対応できる柔軟性の高い人です。<br>
      所謂、空気が読める人です。<br>"
    when '1' then
      @brain_life = @uname + " さんは慎重派の人です。<br>
      よく考えてから行動する石橋を叩いて渡るタイプの人です<br>
      失敗することはほとんどありませんが、慎重になりすぎてチャンスを逃すこともあります。<br>
      だからと言って、突発的な行動をすると後で必ず後悔する結果になります。<br>
      チャンスを逃さないようにするためには、突発的な行動も必要です。<br>
      後悔することも覚悟で行動することも時には大事になってくることでしょう。<br>"
    when '2' then
      @brain_life = @uname + " さんは行動派の人です。<br>
      思い立ったらすぐ行動することが良いでしょう。<br>
      ただ、失敗することも多いです。<br>
      しかし、行動せずに後で「あの時やってたら良かった」と思う方がよっぽど辛いです。<br>
      後悔しないためにもその行動力は大事にです。<br>"
    when '3' then
      @brain_life = @uname + " さんは疑心暗鬼になりやすい人です。<br>
      あまり人を信用することがないタイプの人です。<br>
      時間をかけてゆっくりと相手を信用するため、信用できる人が周りにあまりいないことが多いです。<br>"
    end

    brain_etc = params[:brain_etc]
    if brain_etc then
      brain_etc.keys.each do |select_num|
        case select_num
        when '0' then
          @brain_etc_genius = @uname + " さんは能力が高い人です。<br>
          人よりも物事の習得が早くすることができます。<br>
          ただ、能力が高いが故に怠け者でもあります。<br>
          周りよりも仕事を早く終わらせて、バレないように怠けいることでしょう。<br>
          こういう人は自分の好きなことを仕事にすると良いです。<br>
          夢中になれることを行うことで、怠けず能力を十分に発揮することでしょう。<br>"
        when '1' then
          @brain_etc_hardworker = @uname + " さんは努力家の人です。<br>
          努力を努力と思っていないため、すごく頑張ることができる人です。<br>
          大きな目標があると、誰もできないようなこともできることができる人です。<br>
          辛いことも辛いと感じず、愚直に頑張ることができる人です。<br>"
        end
      end
    end

    brain_etc = params[:brain_etc]
    if brain_etc then
      brain_etc.keys.each do |select_num|
        case select_num
        when '0' then
          @brain_etc_genius = @uname + " さんは能力が高い人です。<br>
          人よりも物事の習得が早くすることができます。<br>
          ただ、能力が高いが故に怠け者でもあります。<br>
          周りよりも仕事を早く終わらせて、バレないように怠けいることでしょう。<br>
          こういう人は自分の好きなことを仕事にすると良いです。<br>
          夢中になれることを行うことで、怠けず能力を十分に発揮することでしょう。<br>"
        when '1' then
          @brain_etc_hardworker = @uname + " さんは努力家の人です。<br>
          努力を努力と思っていないため、すごく頑張ることができる人です。<br>
          大きな目標があると、誰もできないようなこともできることができる人です。<br>
          辛いことも辛いと感じず、愚直に頑張ることができる人です。<br>"
        end
      end
    end

    jupiter = params[:jupiter]
    if jupiter then
      jupiter.keys.each do |select_num|
        case select_num
        when '0' then
          @jupiter_social = "さらに" + @uname + " さんは社会的に成功したいと思っている人です。<br>
          仕事に対して真面目で、一生懸命に頑張ることができます。<br>"
        when '1' then
          @jupiter_reader = "さらに" + @uname + " さんはリーダータイプでもあります。<br>
          誰かに指示されて動くよりも、自分から周りを引っ張っていく方が良いでしょう。<br>"
        end
      end
    end

    case params[:sun]
    when '0' then
      @sun = @uname + " さんは地道な努力で出世するタイプです。<br>
      「継続は力なり」がピッタリな人です。<br>
      続けることで周りから認められる存在となります。<br>
      うまくいなかいからと言ってすぐに諦めるのではなく、根気よく続けていくことが大事になってきます。<br>
      そうすることで、地位や名声を得られることでしょう。<br>"
    when '1' then
      @sun = @uname + " さんは才能を活かして出世するタイプです。<br>
      自分の才能を活かせる場にいるかどうかで、出世ができるかどうかが決まってきます。<br>
      職業や場所がとても重要な要素でしょう。<br>
      自分のやりたいこととできることは違います。<br>
      やりたいことも大事ですが、才能にあった場所を見つけることも大事です。<br>
      " + @uname + " さんを必要としている場所に行くことでお金には困らない生活をすることでしょう。<br>"
    when '2' then
      @sun_not = "ただ、" + @uname + " さんは現在才能を活かしきれていません。<br>
      今やりたいことはありますか。<br>
      " + @uname + " さんの才能に合ったことがうまくできていません。<br>
      今やっていること辞めろってわけではありません。<br>
      今やっていることに" + @uname + " さんの才能を活かすことが必要になってきます。<br>"
    end

    sun_etc = params[:sun_etc]
    if sun_etc then
      sun_etc.keys.each do |select_num|
        case select_num
        when '0' then
          @sun_etc_charm = @uname + " さんは魅力的な人でもあります。<br>
          異性から好かれやすいようです。<br>
          所謂、モテる人でしょう。<br>"
        end
      end
    end

    case params[:mercury]
    when '0' then
      @mercury = @uname + " さんは現在お金に困っています。<br>
      現在の収入に満足していません。<br>"
    when '1' then
      @mercury = @uname + " さんはお金は入ってきますが、すぐに出て行く状態です。<br>
      貯金がしにくい状態のようです。<br>"
    when '2' then
      @mercury = @uname + " さんはお金には困らない生活をしています。<br>
      特にお金に困るようなこともなく、お金に縛られない生活ができています。<br>"
    end

    venus = params[:venus]
    if venus then
      venus.keys.each do |select_num|
        case select_num
        when '0' then
          @venus_virtuous = "さらに、" + @uname + " 周りからの信頼も厚いです。<br>
          自分のことよりも周りへの貢献を優先させるような人です。<br>
          とても素晴らしい人でしょう。<br>"
        when '1' then
          @venus_kindheart =  @uname + " さんは結婚後は子供を大切にします。<br>
          家族のことを優先的に考え、家族を大切にする良い[お母さん|お父さん]になるタイプでしょう。<br>"
        end
      end
    end

    hand_shape = params[:hand_shape]
    if hand_shape then
      hand_shape.keys.each do |select_num|
        case select_num
        when '0' then
          if params[:mercury] == '1' then
            @hand_shape_waste = "ただ、" + @uname + " さんは浪費家です。<br>
            入った分だけ使ってしまうので、いくらお金があっても満足はしません。<br>"
          end
        when '1' then
          @hand_shape_report = "さらに" + @uname + " さんは文章で伝える能力が高いです。<br>
          自分の考えを伝える時は文章にまとめて伝える方が良いでしょう。<br>"
        end
      end
    end
  end

  def profile
  end
end
