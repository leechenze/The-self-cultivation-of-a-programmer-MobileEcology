<div class="post-content">

        

        <h2 id="getx-cli安装">GetX Cli安装</h2>

<h2 id="视频教程地址">视频教程地址</h2>
<p><a href="https://www.bilibili.com/video/BV1uq4y1U7fF?p=17">零基础视频教程地址</a></p>

<h3 id="第一步安装cli脚手架">第一步：安装Cli脚手架</h3>

<p>我们通过命令<code class="language-plaintext highlighter-rouge">flutter pub global activate get_cli</code> 进行脚手架的全局安装，本文以<code class="language-plaintext highlighter-rouge">Mac OS</code>为例。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="o">~</span> <span class="n">jm</span><span class="err">$</span> <span class="n">flutter</span> <span class="n">pub</span> <span class="n">global</span> <span class="n">activate</span> <span class="n">get_cli</span>

<span class="n">Resolving</span> <span class="n">dependencies</span><span class="o">...</span>
<span class="o">+</span> <span class="n">_fe_analyzer_shared</span> <span class="mf">25.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">analyzer</span> <span class="mf">2.2</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">ansicolor</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">archive</span> <span class="mf">3.1</span><span class="o">.</span><span class="mi">2</span>
<span class="o">+</span> <span class="n">args</span> <span class="mf">2.2</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">async</span> <span class="mf">2.8</span><span class="o">.</span><span class="mi">2</span>
<span class="o">+</span> <span class="n">charcode</span> <span class="mf">1.3</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">cli_dialog</span> <span class="mf">0.5</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">cli_menu</span> <span class="mf">0.3</span><span class="o">.</span><span class="mi">0</span><span class="o">-</span><span class="n">nullsafety</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">cli_util</span> <span class="mf">0.3</span><span class="o">.</span><span class="mi">3</span>
<span class="o">+</span> <span class="n">clock</span> <span class="mf">1.1</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">collection</span> <span class="mf">1.15</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">convert</span> <span class="mf">3.0</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">crypto</span> <span class="mf">3.0</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">dart_console</span> <span class="mf">1.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">dart_style</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">3</span>
<span class="o">+</span> <span class="n">ffi</span> <span class="mf">1.1</span><span class="o">.</span><span class="mi">2</span>
<span class="o">+</span> <span class="n">file</span> <span class="mf">6.1</span><span class="o">.</span><span class="mi">2</span>
<span class="o">+</span> <span class="n">get_cli</span> <span class="mf">1.6</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">glob</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">http</span> <span class="mf">0.13</span><span class="o">.</span><span class="mi">3</span>
<span class="o">+</span> <span class="n">http_parser</span> <span class="mf">4.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">intl</span> <span class="mf">0.17</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">matcher</span> <span class="mf">0.12</span><span class="o">.</span><span class="mi">11</span>
<span class="o">+</span> <span class="n">meta</span> <span class="mf">1.7</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">package_config</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">path</span> <span class="mf">1.8</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">pedantic</span> <span class="mf">1.11</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">process_run</span> <span class="mf">0.12</span><span class="o">.</span><span class="mi">1</span><span class="o">+</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">pub_semver</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">pubspec</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">quiver</span> <span class="mf">3.0</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">recase</span> <span class="mf">4.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">source_span</span> <span class="mf">1.8</span><span class="o">.</span><span class="mi">1</span>
<span class="o">+</span> <span class="n">stack_trace</span> <span class="mf">1.10</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">string_scanner</span> <span class="mf">1.1</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">synchronized</span> <span class="mf">3.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">term_glyph</span> <span class="mf">1.2</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">typed_data</span> <span class="mf">1.3</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">uri</span> <span class="mf">1.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">version</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">watcher</span> <span class="mf">1.0</span><span class="o">.</span><span class="mi">0</span>
<span class="o">+</span> <span class="n">win32</span> <span class="mf">2.2</span><span class="o">.</span><span class="mi">9</span>
<span class="o">+</span> <span class="n">yaml</span> <span class="mf">3.1</span><span class="o">.</span><span class="mi">0</span>
<span class="n">Downloading</span> <span class="n">get_cli</span> <span class="mf">1.6</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">version</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">recase</span> <span class="mf">4.0</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">pubspec</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">1</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">cli_menu</span> <span class="mf">0.3</span><span class="o">.</span><span class="mi">0</span><span class="o">-</span><span class="n">nullsafety</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">cli_dialog</span> <span class="mf">0.5</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">ansicolor</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">1</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">uri</span> <span class="mf">1.0</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">process_run</span> <span class="mf">0.12</span><span class="o">.</span><span class="mi">1</span><span class="o">+</span><span class="mi">1</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">synchronized</span> <span class="mf">3.0</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">dart_console</span> <span class="mf">1.0</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">quiver</span> <span class="mf">3.0</span><span class="o">.</span><span class="mi">1</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">dart_style</span> <span class="mf">2.0</span><span class="o">.</span><span class="mi">3</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">analyzer</span> <span class="mf">2.2</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">_fe_analyzer_shared</span> <span class="mf">25.0</span><span class="o">.</span><span class="mi">0</span><span class="o">...</span>
<span class="n">Downloading</span> <span class="n">win32</span> <span class="mf">2.2</span><span class="o">.</span><span class="mi">9</span><span class="o">...</span>
<span class="n">Building</span> <span class="n">package</span> <span class="n">executables</span><span class="o">...</span>
<span class="n">Built</span> <span class="nl">get_cli:</span><span class="kd">get</span><span class="o">.</span>
<span class="n">Installed</span> <span class="n">executables</span> <span class="kd">get</span> <span class="n">and</span> <span class="n">getx</span><span class="o">.</span>
<span class="nl">Warning:</span> <span class="n">Pub</span> <span class="n">installs</span> <span class="n">executables</span> <span class="n">into</span> <span class="n">$HOME</span><span class="o">/.</span><span class="na">pub</span><span class="o">-</span><span class="n">cache</span><span class="o">/</span><span class="n">bin</span><span class="o">,</span> <span class="n">which</span> <span class="k">is</span> <span class="n">not</span> <span class="n">on</span> <span class="n">your</span> <span class="n">path</span><span class="o">.</span>
<span class="n">You</span> <span class="n">can</span> <span class="n">fix</span> <span class="n">that</span> <span class="n">by</span> <span class="n">adding</span> <span class="k">this</span> <span class="n">to</span> <span class="n">your</span> <span class="n">shell</span><span class="s">'s config file (.bashrc, .bash_profile, etc.):

export PATH="</span><span class="si">$PATH</span><span class="s">":"</span><span class="si">$HOME</span><span class="s">/.pub-cache/bin"

Activated get_cli 1.6.0.
</span></pre></td></tr></tbody></table></code></div></div>

<h3 id="第二步设置环境变量">第二步：设置环境变量</h3>

<p>一般<code class="language-plaintext highlighter-rouge">Mac</code>的环境变量都是通过根目录的<code class="language-plaintext highlighter-rouge">.bash_profile</code>进行环境变量设置。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
</pre></td><td class="rouge-code"><pre><span class="ss">#getX</span>
<span class="kn">export</span> <span class="n">PATH</span><span class="o">=</span><span class="s">"</span><span class="si">$PATH</span><span class="s">"</span><span class="o">:</span><span class="s">"</span><span class="si">$HOME</span><span class="s">/.pub-cache/bin"</span>
</pre></td></tr></tbody></table></code></div></div>

<h3 id="第三步使设置的环境变量生效">第三步：使设置的环境变量生效</h3>

<p>我们可以通过<code class="language-plaintext highlighter-rouge">source</code> 加上路径，对环境变量生效。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="o">~</span> <span class="n">jm</span><span class="err">$</span> <span class="kn">source</span> <span class="s">"/Users/jm/.bash_profile"</span>
</pre></td></tr></tbody></table></code></div></div>

<h3 id="第四步校验是否成功安装">第四步：校验是否成功安装</h3>

<p>我们通过<code class="language-plaintext highlighter-rouge">get</code>命令，看能不能打印如下，如果有，那么恭喜你安装成功了。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="o">~</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span>

<span class="n">List</span> <span class="n">available</span> <span class="nl">commands:</span>

  <span class="nl">create:</span>  
    <span class="nl">controller:</span>  <span class="n">Generate</span> <span class="n">controller</span>
    <span class="nl">page:</span>  <span class="n">Use</span> <span class="n">to</span> <span class="n">generate</span> <span class="n">pages</span>
    <span class="nl">project:</span>  <span class="n">Use</span> <span class="n">to</span> <span class="n">generate</span> <span class="k">new</span> <span class="n">project</span>
    <span class="nl">provider:</span>  <span class="n">Create</span> <span class="n">a</span> <span class="k">new</span> <span class="n">Provider</span>
    <span class="nl">screen:</span>  <span class="n">Generate</span> <span class="k">new</span> <span class="n">screen</span>
    <span class="nl">view:</span>  <span class="n">Generate</span> <span class="n">view</span>
  <span class="nl">generate:</span>  
    <span class="nl">locales:</span>  <span class="n">Generate</span> <span class="n">translation</span> <span class="n">file</span> <span class="n">from</span> <span class="n">json</span> <span class="n">files</span>
    <span class="nl">model:</span>  <span class="n">generate</span> <span class="n">Class</span> <span class="n">model</span> <span class="n">from</span> <span class="n">json</span>
  <span class="nl">help:</span>  <span class="n">Show</span> <span class="k">this</span> <span class="n">help</span>
  <span class="nl">init:</span>  <span class="n">generate</span> <span class="n">the</span> <span class="n">chosen</span> <span class="n">structure</span> <span class="n">on</span> <span class="n">an</span> <span class="n">existing</span> <span class="nl">project:</span>
  <span class="nl">install:</span>  <span class="n">Use</span> <span class="n">to</span> <span class="n">install</span> <span class="n">a</span> <span class="n">package</span> <span class="k">in</span> <span class="n">your</span> <span class="n">project</span> <span class="o">(</span><span class="n">dependencies</span><span class="o">):</span>
  <span class="nl">remove:</span>  <span class="n">Use</span> <span class="n">to</span> <span class="n">remove</span> <span class="n">a</span> <span class="n">package</span> <span class="k">in</span> <span class="n">your</span> <span class="n">project</span> <span class="o">(</span><span class="n">dependencies</span><span class="o">):</span>
  <span class="nl">sort:</span>  <span class="n">Sort</span> <span class="n">imports</span> <span class="n">and</span> <span class="n">format</span> <span class="n">dart</span> <span class="n">files</span>
  <span class="nl">update:</span>  <span class="n">To</span> <span class="n">update</span> <span class="n">GET_CLI</span>
  <span class="o">--</span><span class="nl">version:</span>  <span class="n">Shows</span> <span class="n">the</span> <span class="n">current</span> <span class="n">CLI</span> <span class="n">version</span><span class="s">'

Time: 1814 Milliseconds
</span></pre></td></tr></tbody></table></code></div></div>

<h2 id="cli创建工程">Cli创建工程</h2>

<p>我们可以通过<code class="language-plaintext highlighter-rouge">get create project</code>来进行创建工程，</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">create</span> <span class="n">project</span>
</pre></td></tr></tbody></table></code></div></div>

<p>然后出现如下提示，我们选择创建<code class="language-plaintext highlighter-rouge">Flutter Project</code></p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
</pre></td><td class="rouge-code"><pre><span class="o">--&gt;</span>   <span class="mi">1</span><span class="o">)</span> <span class="n">Flutter</span> <span class="n">Project</span>
      <span class="mi">2</span><span class="o">)</span> <span class="n">Get</span> <span class="n">Server</span>
</pre></td></tr></tbody></table></code></div></div>

<p>选择之后需要输入<strong>工程名称</strong>、<strong>公司域名</strong>、<strong>选择iOS语言</strong>、<strong>选择Android语言</strong>、<strong>是否空安全</strong>、<strong>是否校验</strong>，选完知道就会为我们开始创建工程。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">create</span> <span class="n">project</span>
<span class="o">--&gt;</span>   <span class="mi">1</span><span class="o">)</span> <span class="n">Flutter</span> <span class="n">Project</span>
      <span class="mi">2</span><span class="o">)</span> <span class="n">Get</span> <span class="n">Server</span>
<span class="o">?</span> <span class="n">what</span> <span class="k">is</span> <span class="n">the</span> <span class="n">name</span> <span class="n">of</span> <span class="n">the</span> <span class="n">project</span><span class="o">?</span> <span class="n">getx_example</span>
<span class="o">?</span> <span class="n">What</span> <span class="k">is</span> <span class="n">your</span> <span class="n">company</span><span class="s">'s domain?  Example: com.yourcompany  com.jimi

what language do you want to use on ios?

      1) Swift
--&gt;   2) Objective-C

what language do you want to use on android?

      1) Kotlin
--&gt;   2) Java

Do you want to use null safe?

--&gt;   1) Yes!
      2) No

do you want to use some linter?

      1) no
      2) Pedantic [Deprecated]
      3) Effective Dart [Deprecated]
--&gt;   4) Dart Recommended

Running `flutter create /Users/jm/Desktop/Project/getx/getx_example` …

</span><span class="err">$</span><span class="s"> flutter create --no-pub -i objc -a java --org com.jimi /Users/jm/Desktop/Project/getx/getx_example
Creating project ....
  test/widget_test.dart (created)
  pubspec.yaml (created)
  README.md (created)
  lib/main.dart (created)
  windows/runner/flutter_window.cpp (created)
  windows/runner/utils.h (created)
  windows/runner/utils.cpp (created)
  windows/runner/runner.exe.manifest (created)
  windows/runner/CMakeLists.txt (created)
  windows/runner/win32_window.h (created)
  windows/runner/Runner.rc (created)
  windows/runner/win32_window.cpp (created)
  windows/runner/resources/app_icon.ico (created)
  windows/runner/main.cpp (created)
  windows/runner/resource.h (created)
  windows/runner/flutter_window.h (created)
  windows/flutter/CMakeLists.txt (created)
  windows/.gitignore (created)
  windows/CMakeLists.txt (created)
  ios/Runner.xcworkspace/contents.xcworkspacedata (created)
  ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist (created)
  ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings (created)
  ios/Runner/Info.plist (created)
  ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png (created)
  ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png (created)
  ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md (created)
  ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json (created)
  ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png (created)
  ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png (created)
  ios/Runner/Base.lproj/LaunchScreen.storyboard (created)
  ios/Runner/Base.lproj/Main.storyboard (created)
  ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata (created)
  ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist (created)
  ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings (created)
  ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme (created)
  ios/Flutter/Debug.xcconfig (created)
  ios/Flutter/Release.xcconfig (created)
  ios/Flutter/AppFrameworkInfo.plist (created)
  ios/.gitignore (created)
  getx_example.iml (created)
  .gitignore (created)
  web/favicon.png (created)
  web/index.html (created)
  web/manifest.json (created)
  web/icons/Icon-maskable-512.png (created)
  web/icons/Icon-192.png (created)
  web/icons/Icon-maskable-192.png (created)
  web/icons/Icon-512.png (created)
  .metadata (created)
  macos/Runner.xcworkspace/contents.xcworkspacedata (created)
  macos/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist (created)
  macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_16.png (created)
  macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_1024.png (created)
  macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_256.png (created)
  macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_64.png (created)
  macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_512.png (created)
  macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_128.png (created)
  macos/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json (created)
  macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_32.png (created)
  macos/Runner/DebugProfile.entitlements (created)
  macos/Runner/Base.lproj/MainMenu.xib (created)
  macos/Runner/MainFlutterWindow.swift (created)
  macos/Runner/Configs/Debug.xcconfig (created)
  macos/Runner/Configs/Release.xcconfig (created)
  macos/Runner/Configs/Warnings.xcconfig (created)
  macos/Runner/Configs/AppInfo.xcconfig (created)
  macos/Runner/AppDelegate.swift (created)
  macos/Runner/Info.plist (created)
  macos/Runner/Release.entitlements (created)
  macos/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist (created)
  macos/Runner.xcodeproj/project.pbxproj (created)
  macos/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme (created)
  macos/Flutter/Flutter-Debug.xcconfig (created)
  macos/Flutter/Flutter-Release.xcconfig (created)
  macos/.gitignore (created)
  ios/Runner/AppDelegate.h (created)
  ios/Runner/main.m (created)
  ios/Runner/AppDelegate.m (created)
  ios/Runner.xcodeproj/project.pbxproj (created)
  android/app/src/profile/AndroidManifest.xml (created)
  android/app/src/main/res/mipmap-mdpi/ic_launcher.png (created)
  android/app/src/main/res/mipmap-hdpi/ic_launcher.png (created)
  android/app/src/main/res/drawable/launch_background.xml (created)
  android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png (created)
  android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png (created)
  android/app/src/main/res/values-night/styles.xml (created)
  android/app/src/main/res/values/styles.xml (created)
  android/app/src/main/res/drawable-v21/launch_background.xml (created)
  android/app/src/main/res/mipmap-xhdpi/ic_launcher.png (created)
  android/app/src/main/AndroidManifest.xml (created)
  android/app/src/debug/AndroidManifest.xml (created)
  android/gradle/wrapper/gradle-wrapper.properties (created)
  android/gradle.properties (created)
  android/.gitignore (created)
  android/settings.gradle (created)
  android/app/build.gradle (created)
  android/app/src/main/java/com/jimi/getx_example/MainActivity.java (created)
  android/build.gradle (created)
  android/getx_example_android.iml (created)
  analysis_options.yaml (created)
  .idea/runConfigurations/main_dart.xml (created)
  .idea/libraries/Dart_SDK.xml (created)
  .idea/libraries/KotlinJavaRuntime.xml (created)
  .idea/modules.xml (created)
  .idea/workspace.xml (created)
  linux/main.cc (created)
  linux/my_application.h (created)
  linux/my_application.cc (created)
  linux/flutter/CMakeLists.txt (created)
  linux/.gitignore (created)
  linux/CMakeLists.txt (created)
Wrote 129 files.

All done!
In order to run your application, type:

  </span><span class="err">$</span><span class="s"> cd .
  </span><span class="err">$</span><span class="s"> flutter run

Your application code is in ./lib/main.dart.


Running `flutter pub get` …

</span><span class="err">$</span><span class="s"> flutter pub get
Running "flutter pub get" in getx_example...                       898ms
</span><span class="err">$</span><span class="s"> dart migrate --apply-changes --skip-import-check
Migrating /Users/jm/Desktop/Project/getx/getx_example

See https://dart.dev/go/null-safety-migration for a migration guide.

Analyzing project...
All sources appear to be already migrated.  Nothing to do.
✖  + HandshakeException: Connection terminated during handshake

✓  File: analysis_options.yaml created successfully at path: analysis_options.yaml
--&gt;   1) GetX Pattern (by Kauê)
      2) CLEAN (by Arktekko)

Your lib folder is not empty. Are you sure you want to overwrite your application? 
 WARNING: This action is irreversible

--&gt;   1) Yes!
      2) No
✓  '</span><span class="nl">Package:</span> <span class="kd">get</span> <span class="n">installed</span><span class="o">!</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">main</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">main</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">home_controller</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">controllers</span><span class="o">/</span><span class="n">home_controller</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">home_view</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">views</span><span class="o">/</span><span class="n">home_view</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">home_binding</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">bindings</span><span class="o">/</span><span class="n">home_binding</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">app_routes</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">routes</span><span class="o">/</span><span class="n">app_routes</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">app_pages</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">routes</span><span class="o">/</span><span class="n">app_pages</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="n">home</span> <span class="n">route</span> <span class="n">created</span> <span class="n">successfully</span><span class="o">.</span>
<span class="err">✓</span>  <span class="n">Home</span> <span class="n">page</span> <span class="n">created</span> <span class="n">successfully</span><span class="o">.</span>
<span class="err">✓</span>  <span class="n">GetX</span> <span class="n">Pattern</span> <span class="n">structure</span> <span class="n">successfully</span> <span class="n">generated</span><span class="o">.</span>

<span class="n">Running</span> <span class="err">`</span><span class="n">flutter</span> <span class="n">pub</span> <span class="kd">get</span><span class="err">`</span> <span class="err">…</span>

<span class="err">$</span> <span class="n">flutter</span> <span class="n">pub</span> <span class="kd">get</span>
<span class="n">Running</span> <span class="s">"flutter pub get"</span> <span class="k">in</span> <span class="n">getx_example</span><span class="o">...</span>                       <span class="mi">968</span><span class="n">ms</span>

<span class="nl">Time:</span> <span class="mi">53925</span> <span class="n">Milliseconds</span>
</pre></td></tr></tbody></table></code></div></div>

<p>如果能看到如上就证明通过<code class="language-plaintext highlighter-rouge">Cli</code>创建工程成功了。</p>

<p><a href="https://gz-ljm-blog.oss-cn-guangzhou.aliyuncs.com/blog/getx_create_project.png" title="" class="popup img-link"><img data-proofer-ignore="" data-src="https://gz-ljm-blog.oss-cn-guangzhou.aliyuncs.com/blog/getx_create_project.png" alt="" src="https://gz-ljm-blog.oss-cn-guangzhou.aliyuncs.com/blog/getx_create_project.png" data-loaded="true"></a></p>

<h2 id="cli创建页面">Cli创建页面</h2>

<h4 id="第一种getx_pattern">第一种：Getx_pattern</h4>

<p>我们可以通过<code class="language-plaintext highlighter-rouge">get create page:login</code>来快速创建一个页面，这个页面有<code class="language-plaintext highlighter-rouge">controller</code>、<code class="language-plaintext highlighter-rouge">view</code>、<code class="language-plaintext highlighter-rouge">binding</code>、<code class="language-plaintext highlighter-rouge">routes</code>等配置，结构是<code class="language-plaintext highlighter-rouge">Getx_pattern</code></p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">create</span> <span class="nl">page:</span><span class="n">login</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">login_controller</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">login</span><span class="o">/</span><span class="n">controllers</span><span class="o">/</span><span class="n">login_controller</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">login_view</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">login</span><span class="o">/</span><span class="n">views</span><span class="o">/</span><span class="n">login_view</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">login_binding</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">login</span><span class="o">/</span><span class="n">bindings</span><span class="o">/</span><span class="n">login_binding</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="n">login</span> <span class="n">route</span> <span class="n">created</span> <span class="n">successfully</span><span class="o">.</span>
<span class="err">✓</span>  <span class="n">Login</span> <span class="n">page</span> <span class="n">created</span> <span class="n">successfully</span><span class="o">.</span>

<span class="nl">Time:</span> <span class="mi">453</span> <span class="n">Milliseconds</span>

<span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> 
</pre></td></tr></tbody></table></code></div></div>

<h4 id="第二种clean">第二种：CLEAN</h4>

<p>我们可以通过<code class="language-plaintext highlighter-rouge">get create page:login</code>来快速创建一个页面，这个页面有<code class="language-plaintext highlighter-rouge">controller</code>、<code class="language-plaintext highlighter-rouge">view</code>、<code class="language-plaintext highlighter-rouge">binding</code>、<code class="language-plaintext highlighter-rouge">routes</code>等配置，结构是<code class="language-plaintext highlighter-rouge">CLEAN</code>。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">create</span> <span class="nl">screen:</span><span class="n">name</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">name</span><span class="o">.</span><span class="na">controller</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">presentation</span><span class="o">/</span><span class="n">name</span><span class="o">/</span><span class="n">controllers</span><span class="o">/</span><span class="n">name</span><span class="o">.</span><span class="na">controller</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">name</span><span class="o">.</span><span class="na">screen</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">presentation</span><span class="o">/</span><span class="n">name</span><span class="o">/</span><span class="n">name</span><span class="o">.</span><span class="na">screen</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">name</span><span class="o">.</span><span class="na">controller</span><span class="o">.</span><span class="na">binding</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">infrastructure</span><span class="o">/</span><span class="n">navigation</span><span class="o">/</span><span class="n">bindings</span><span class="o">/</span><span class="n">controllers</span><span class="o">/</span><span class="n">name</span><span class="o">.</span><span class="na">controller</span><span class="o">.</span><span class="na">binding</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">routes</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">infrastructure</span><span class="o">/</span><span class="n">navigation</span><span class="o">/</span><span class="n">routes</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">routes</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">infrastructure</span><span class="o">/</span><span class="n">navigation</span><span class="o">/</span><span class="n">routes</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="n">name</span> <span class="n">route</span> <span class="n">created</span> <span class="n">successfully</span><span class="o">.</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">navigation</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">infrastructure</span><span class="o">/</span><span class="n">navigation</span><span class="o">/</span><span class="n">navigation</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="n">Name</span> <span class="n">navigation</span> <span class="n">added</span> <span class="n">successfully</span><span class="o">.</span>

<span class="nl">Time:</span> <span class="mi">482</span> <span class="n">Milliseconds</span>
</pre></td></tr></tbody></table></code></div></div>

<h2 id="cli创建控制器">Cli创建控制器</h2>

<p>我们可以通过<code class="language-plaintext highlighter-rouge">get create controller:login</code>来快速为已存在的page进行创建<code class="language-plaintext highlighter-rouge">controller</code>，并且他还重新了<code class="language-plaintext highlighter-rouge">controller</code>的生命周期以及初始化方法。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
</pre></td><td class="rouge-code"><pre><span class="kd">get</span> <span class="n">create</span> <span class="nl">controller:</span><span class="n">another</span> <span class="n">on</span> <span class="n">home</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">another_controller</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">controllers</span><span class="o">/</span><span class="n">another_controller</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="n">The</span> <span class="n">Another</span> <span class="n">has</span> <span class="n">been</span> <span class="n">added</span> <span class="n">to</span> <span class="n">binding</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">bindings</span><span class="o">/</span><span class="n">home_binding</span><span class="o">.</span><span class="na">dart</span><span class="s">'

Time: 387 Milliseconds

JMdeMacBook-Pro:getx_example jm</span><span class="err">$</span><span class="s"> 
</span></pre></td></tr></tbody></table></code></div></div>

<h2 id="cli创建view">Cli创建View</h2>

<p>如果我们只是想单独创建一个<code class="language-plaintext highlighter-rouge">View</code>，那我们可以通过<code class="language-plaintext highlighter-rouge">get create view:alogin on login</code>来进行创建。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
</pre></td><td class="rouge-code"><pre> <span class="kd">get</span> <span class="n">create</span> <span class="nl">view:</span><span class="n">alogin</span> <span class="n">on</span> <span class="n">login</span> 
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">alogin_view</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">login</span><span class="o">/</span><span class="n">views</span><span class="o">/</span><span class="n">alogin_view</span><span class="o">.</span><span class="na">dart</span>

<span class="nl">Time:</span> <span class="mi">378</span> <span class="n">Milliseconds</span>

<span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> 
</pre></td></tr></tbody></table></code></div></div>

<h2 id="cli创建provider">Cli创建Provider</h2>

<p>如果我们需要创建<code class="language-plaintext highlighter-rouge">GetConnect</code>，那我们可以通过<code class="language-plaintext highlighter-rouge">get create provider:blogin on login</code>来进行创建。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">create</span> <span class="nl">provider:</span><span class="n">blogin</span> <span class="n">on</span> <span class="n">login</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">blogin_provider</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">login</span><span class="o">/</span><span class="n">providers</span><span class="o">/</span><span class="n">blogin_provider</span><span class="o">.</span><span class="na">dart</span>

<span class="nl">Time:</span> <span class="mi">357</span> <span class="n">Milliseconds</span>

<span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> 
</pre></td></tr></tbody></table></code></div></div>

<h2 id="cli创建国际化">Cli创建国际化</h2>

<p>如果我们需要对应用进行国际化配置，那我们可以通过<code class="language-plaintext highlighter-rouge">get generate locales assets/locales</code>来进行创建。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">generate</span> <span class="n">locales</span> <span class="n">assets</span><span class="o">/</span><span class="n">locales</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">locales</span><span class="o">.</span><span class="na">g</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="n">lib</span><span class="o">/</span><span class="n">generated</span><span class="o">/</span><span class="n">locales</span><span class="o">.</span><span class="na">g</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="n">locale</span> <span class="n">files</span> <span class="n">generated</span> <span class="n">successfully</span><span class="o">.</span>

<span class="nl">Time:</span> <span class="mi">416</span> <span class="n">Milliseconds</span>

<span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> 
</pre></td></tr></tbody></table></code></div></div>

<h2 id="cli通过json生成模型">Cli通过json生成模型</h2>

<h4 id="第一种不仅创建模型类还会提供provider">第一种：不仅创建模型类，还会提供Provider</h4>

<p>如果我们需要对某个json文件生成模型，那我们可以通过<code class="language-plaintext highlighter-rouge">get generate model on home with assets/models/user.json</code>来进行生成</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">generate</span> <span class="n">model</span> <span class="n">on</span> <span class="n">home</span> <span class="k">with</span> <span class="n">assets</span><span class="o">/</span><span class="n">models</span><span class="o">/</span><span class="n">user</span><span class="o">.</span><span class="na">json</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">user_model</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">user_model</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">user_provider</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">providers</span><span class="o">/</span><span class="n">user_provider</span><span class="o">.</span><span class="na">dart</span>

<span class="nl">Time:</span> <span class="mi">499</span> <span class="n">Milliseconds</span>

<span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> 
</pre></td></tr></tbody></table></code></div></div>

<h4 id="第二种只生成模型类">第二种：只生成模型类</h4>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">generate</span> <span class="n">model</span> <span class="n">on</span> <span class="n">login</span> <span class="k">with</span> <span class="n">assets</span><span class="o">/</span><span class="n">models</span><span class="o">/</span><span class="n">user</span><span class="o">.</span><span class="na">json</span> <span class="o">--</span><span class="n">skipProvider</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">user_model</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">login</span><span class="o">/</span><span class="n">user_model</span><span class="o">.</span><span class="na">dart</span>

<span class="nl">Time:</span> <span class="mi">408</span> <span class="n">Milliseconds</span>
</pre></td></tr></tbody></table></code></div></div>

<h4 id="第三种通过连接生成模型类">第三种：通过连接生成模型类</h4>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">generate</span> <span class="n">model</span> <span class="n">on</span> <span class="n">home</span> <span class="n">from</span> <span class="s">"https://api.github.com/users/CpdnCristiano"</span>
<span class="o">?</span> <span class="n">Could</span> <span class="n">not</span> <span class="kd">set</span> <span class="n">the</span> <span class="n">model</span> <span class="n">name</span> <span class="n">automatically</span><span class="o">,</span> <span class="n">which</span> <span class="n">name</span> <span class="k">do</span> <span class="n">you</span> <span class="n">want</span> <span class="n">to</span> <span class="n">use</span><span class="o">?</span> <span class="n">githubHome</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">github_home_model</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">github_home_model</span><span class="o">.</span><span class="na">dart</span>
<span class="err">✓</span>  <span class="nl">File:</span> <span class="n">github_home_provider</span><span class="o">.</span><span class="na">dart</span> <span class="n">created</span> <span class="n">successfully</span> <span class="n">at</span> <span class="nl">path:</span> <span class="o">./</span><span class="n">lib</span><span class="o">/</span><span class="n">app</span><span class="o">/</span><span class="n">modules</span><span class="o">/</span><span class="n">home</span><span class="o">/</span><span class="n">providers</span><span class="o">/</span><span class="n">github_home_provider</span><span class="o">.</span><span class="na">dart</span>

<span class="nl">Time:</span> <span class="mi">14033</span> <span class="n">Milliseconds</span>
</pre></td></tr></tbody></table></code></div></div>

<h2 id="cli安装包dependencies">Cli安装包（dependencies)</h2>

<h4 id="第一种直接安装最新版本">第一种：直接安装最新版本</h4>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">install</span> <span class="n">dio</span>

<span class="n">Installing</span> <span class="n">package</span> <span class="s">"dio"</span> <span class="err">…</span>

<span class="err">✓</span>  <span class="s">'Package: dio installed!

Running `flutter pub get` …

</span><span class="err">$</span><span class="s"> flutter pub get
Running "flutter pub get" in getx_example...                     2,656ms

Time: 5815 Milliseconds
</span></pre></td></tr></tbody></table></code></div></div>

<h4 id="第二种同时安装多个包">第二种：同时安装多个包</h4>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">install</span> <span class="n">path</span> <span class="n">dio</span>

<span class="n">Installing</span> <span class="n">package</span> <span class="s">"path"</span> <span class="err">…</span>

<span class="err">✓</span>  <span class="s">'Package: path installed!

Installing package "dio" …

✓  '</span><span class="nl">Package:</span> <span class="n">dio</span> <span class="n">installed</span><span class="o">!</span>

<span class="n">Running</span> <span class="err">`</span><span class="n">flutter</span> <span class="n">pub</span> <span class="kd">get</span><span class="err">`</span> <span class="err">…</span>

<span class="err">$</span> <span class="n">flutter</span> <span class="n">pub</span> <span class="kd">get</span>
<span class="n">Running</span> <span class="s">"flutter pub get"</span> <span class="k">in</span> <span class="n">getx_example</span><span class="o">...</span>                       <span class="mi">732</span><span class="n">ms</span>

<span class="nl">Time:</span> <span class="mi">7146</span> <span class="n">Milliseconds</span>
</pre></td></tr></tbody></table></code></div></div>

<h4 id="第三种安装自定版本的包">第三种：安装自定版本的包</h4>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">install</span> <span class="nl">prodiver:</span><span class="mf">5.0</span><span class="o">.</span><span class="mi">0</span>

<span class="n">Installing</span> <span class="n">package</span> <span class="s">"prodiver"</span> <span class="err">…</span>

<span class="err">✓</span>  <span class="s">'Package: prodiver installed!
</span></pre></td></tr></tbody></table></code></div></div>

<h2 id="cli安装包dev_dependencies">Cli安装包（dev_dependencies)</h2>

<p>我们可以通过<code class="language-plaintext highlighter-rouge">get install flutter_launcher_icons --dev</code>安装开发时所依赖的包</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">install</span> <span class="n">flutter_launcher_icons</span> <span class="o">--</span><span class="n">dev</span>


<span class="n">The</span> <span class="o">[--</span><span class="n">dev</span><span class="o">]</span> <span class="k">is</span> <span class="n">not</span> <span class="n">necessary</span>


<span class="n">Installing</span> <span class="n">package</span> <span class="s">"flutter_launcher_icons"</span> <span class="err">…</span>

<span class="err">✓</span>  <span class="s">'Package: flutter_launcher_icons installed!
</span></pre></td></tr></tbody></table></code></div></div>

<h2 id="cli卸载包">Cli卸载包</h2>

<h4 id="第一种卸载某个安装包">第一种：卸载某个安装包</h4>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">remove</span> <span class="n">http</span>

<span class="n">Removing</span> <span class="nl">package:</span> <span class="s">"http"</span>


<span class="nl">Package:</span> <span class="n">http</span> <span class="k">is</span> <span class="n">not</span> <span class="n">installed</span> <span class="k">in</span> <span class="k">this</span> <span class="n">application</span>


<span class="n">Running</span> <span class="err">`</span><span class="n">flutter</span> <span class="n">pub</span> <span class="kd">get</span><span class="err">`</span> <span class="err">…</span>

<span class="err">$</span> <span class="n">flutter</span> <span class="n">pub</span> <span class="kd">get</span>
<span class="n">Running</span> <span class="s">"flutter pub get"</span> <span class="k">in</span> <span class="n">getx_example</span><span class="o">...</span>                       <span class="mi">772</span><span class="n">ms</span>

<span class="nl">Time:</span> <span class="mi">2641</span> <span class="n">Milliseconds</span>

</pre></td></tr></tbody></table></code></div></div>

<h4 id="第二种同时卸载多个包">第二种：同时卸载多个包</h4>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">remove</span> <span class="n">dio</span> <span class="n">path</span>

<span class="n">Removing</span> <span class="nl">package:</span> <span class="s">"dio"</span>

<span class="err">✓</span>  <span class="nl">Package:</span> <span class="n">dio</span> <span class="n">removed</span><span class="o">!</span>

<span class="n">Removing</span> <span class="nl">package:</span> <span class="s">"path"</span>

<span class="err">✓</span>  <span class="nl">Package:</span> <span class="n">path</span> <span class="n">removed</span><span class="o">!</span>

<span class="n">Running</span> <span class="err">`</span><span class="n">flutter</span> <span class="n">pub</span> <span class="kd">get</span><span class="err">`</span> <span class="err">…</span>

<span class="err">$</span> <span class="n">flutter</span> <span class="n">pub</span> <span class="kd">get</span>
<span class="n">Running</span> <span class="s">"flutter pub get"</span> <span class="k">in</span> <span class="n">getx_example</span><span class="o">...</span>                     <span class="mi">1</span><span class="o">,</span><span class="mi">085</span><span class="n">ms</span>

<span class="nl">Time:</span> <span class="mi">3142</span> <span class="n">Milliseconds</span>
</pre></td></tr></tbody></table></code></div></div>

<h2 id="cli更新脚手架">Cli更新脚手架</h2>

<p>我们可以通过<code class="language-plaintext highlighter-rouge">get update</code>对脚手架进行更新</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">update</span>

<span class="n">Latest</span> <span class="n">version</span> <span class="n">of</span> <span class="n">get_cli</span> <span class="n">already</span> <span class="n">installed</span>


<span class="nl">Time:</span> <span class="mi">3315</span> <span class="n">Milliseconds</span>
</pre></td></tr></tbody></table></code></div></div>

<h2 id="cli查看版本号">Cli查看版本号</h2>

<p>我们可以通过<code class="language-plaintext highlighter-rouge">get -v</code> 查看当前脚手架的版本号</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="o">-</span><span class="n">v</span>
<span class="err">░██████╗░███████╗████████╗  </span> <span class="err">░█████╗░██╗░░░░░░██╗</span>
<span class="err">██╔════╝░██╔════╝╚══██╔══╝ </span> <span class="err"> ██╔══██╗██║░░░░░░██║</span>
<span class="err">██║░░██╗░█████╗░░░░░██║░░░ </span> <span class="err"> ██║░░╚═╝██║░░░░░░██║</span>
<span class="err">██║░░╚██╗██╔══╝░░░░░██║░░░ </span> <span class="err"> ██║░░██╗██║░░░░░░██║</span>
<span class="err">╚██████╔╝███████╗░░░██║░░░ </span> <span class="err"> ╚█████╔╝███████╗</span> <span class="err">██║</span>
<span class="err">░╚═════╝░╚══════╝░░░╚═╝░░░ </span> <span class="err"> ░╚════╝░╚══════╝</span> <span class="err">╚═╝</span>

<span class="nl">Version:</span> <span class="mf">1.6</span><span class="o">.</span><span class="mi">0</span>

<span class="nl">Time:</span> <span class="mi">148</span> <span class="n">Milliseconds</span>
</pre></td></tr></tbody></table></code></div></div>

<h2 id="cli帮助">Cli帮助</h2>

<p>当我们忘记了命令的使用方式，我们可以通过<code class="language-plaintext highlighter-rouge">get help</code>进行查看帮助。</p>

<div lang="dart" class="language-dart highlighter-rouge"><div class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
</pre></td><td class="rouge-code"><pre><span class="n">JMdeMacBook</span><span class="o">-</span><span class="nl">Pro:</span><span class="n">getx_example</span> <span class="n">jm</span><span class="err">$</span> <span class="kd">get</span> <span class="n">help</span>

<span class="n">List</span> <span class="n">available</span> <span class="nl">commands:</span>

  <span class="nl">create:</span>  
    <span class="nl">controller:</span>  <span class="n">Generate</span> <span class="n">controller</span>
    <span class="nl">page:</span>  <span class="n">Use</span> <span class="n">to</span> <span class="n">generate</span> <span class="n">pages</span>
    <span class="nl">project:</span>  <span class="n">Use</span> <span class="n">to</span> <span class="n">generate</span> <span class="k">new</span> <span class="n">project</span>
    <span class="nl">provider:</span>  <span class="n">Create</span> <span class="n">a</span> <span class="k">new</span> <span class="n">Provider</span>
    <span class="nl">screen:</span>  <span class="n">Generate</span> <span class="k">new</span> <span class="n">screen</span>
    <span class="nl">view:</span>  <span class="n">Generate</span> <span class="n">view</span>
  <span class="nl">generate:</span>  
    <span class="nl">locales:</span>  <span class="n">Generate</span> <span class="n">translation</span> <span class="n">file</span> <span class="n">from</span> <span class="n">json</span> <span class="n">files</span>
    <span class="nl">model:</span>  <span class="n">generate</span> <span class="n">Class</span> <span class="n">model</span> <span class="n">from</span> <span class="n">json</span>
  <span class="nl">help:</span>  <span class="n">Show</span> <span class="k">this</span> <span class="n">help</span>
  <span class="nl">init:</span>  <span class="n">generate</span> <span class="n">the</span> <span class="n">chosen</span> <span class="n">structure</span> <span class="n">on</span> <span class="n">an</span> <span class="n">existing</span> <span class="nl">project:</span>
  <span class="nl">install:</span>  <span class="n">Use</span> <span class="n">to</span> <span class="n">install</span> <span class="n">a</span> <span class="n">package</span> <span class="k">in</span> <span class="n">your</span> <span class="n">project</span> <span class="o">(</span><span class="n">dependencies</span><span class="o">):</span>
  <span class="nl">remove:</span>  <span class="n">Use</span> <span class="n">to</span> <span class="n">remove</span> <span class="n">a</span> <span class="n">package</span> <span class="k">in</span> <span class="n">your</span> <span class="n">project</span> <span class="o">(</span><span class="n">dependencies</span><span class="o">):</span>
  <span class="nl">sort:</span>  <span class="n">Sort</span> <span class="n">imports</span> <span class="n">and</span> <span class="n">format</span> <span class="n">dart</span> <span class="n">files</span>
  <span class="nl">update:</span>  <span class="n">To</span> <span class="n">update</span> <span class="n">GET_CLI</span>
  <span class="o">--</span><span class="nl">version:</span>  <span class="n">Shows</span> <span class="n">the</span> <span class="n">current</span> <span class="n">CLI</span> <span class="n">version</span><span class="s">'

Time: 94 Milliseconds
</span></pre></td></tr></tbody></table></code></div></div>

<h2 id="总结">总结</h2>

<p>以上就是对Cli的脚手架命令的一个实践和总结，相对于自己手动创建结构，用<code class="language-plaintext highlighter-rouge">Cli</code>就可以很轻松的实现。</p>


      </div>