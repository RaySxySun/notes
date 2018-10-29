---
layout: post
title: 11. Useful & professional english in workplace
date: 2016-01-18
categories: en
tags: [en, workplace]
description:  
---

- delta 增量变量

                $ git push -f origin HEAD
                Counting objects: 15, done.
                Delta compression using up to 4 threads.
                Compressing objects: 100% (6/6), done.
                Writing objects: 100% (6/6), 804 bytes | 0 bytes/s, done.
                Total 6 (delta 5), reused 0 (delta 0)
                To git@github.com:RaySxySun/xxxxxx
                 + a695c74...cfb90cf HEAD -> master (forced update)
---

- pass something on (to somebody)

    In C#, arguments can be passed to parameters either by value or by reference.
	Much of the discount is pocketed(私吞了) by retailers instead of being passed on to customers.

---

- cancel out 抵消

    The pros and cons cancel out.

---

-laden(used to form adjectives showing that something is full of, or loaded with, the thing mentioned)
    - feature-laden (multifunction)
        - Avoids feature-laden classes high up in the hierarchy
    - value-laden (influenced by personal opinions)
        - 'Freedom fighter' is a value-laden word.

---

- degenerate (adj.退化的,变质的 vt/vi. 使退化, 退化)
    - A decorator can be viewed as a degenerate(adj.) composite with only one component.

---

- Snippet: a small piece of information or news

    // Snippet of response

    "id":"43027995-e84d-d4df-15bf-5238fccf83ee"
    "name":"OXTON KVETON RIZAL"
    "primary_cmr":[]
    "cmr_number":""
    "default_cmr":""

---

- CMR(customer-managed relationship)
    - customer-managed relationship (CMR) is a relationship in which a business uses a methodology, software, and perhaps Internet capability to encourage the customer to control access to information and ordering. CMR can be viewed as an alternative to or as a possible approach to include in CRM (customer relationship management).

---

- walk sb through
    -to slowly and carefully explain something to someone or show someone how to do something
    - Hi folks, we will hold the Release R3.4 knowledge sharing session tomorrow between 7:30 PM and 8:00 PM at the training on the floor 3. Each team can walk us through changes/stories/even defects that your team has achieved during R3.4 from the business perspective or technical perspective. So all of us can get on the same page to learn from each other to avoid identical mistakes and gain knowledge. Let’s see which team is the best to do this for the first time.

---

- postpone
    - [meaning]to arrange for an event, etc. to take place at a later time or date
    - [diff] delay:
        - (n.) a period of time when sb/sth **has to** wait because of a problem that makes something slow or late
        - (v.)to not do something until a later time or to make something happen at a later time
            - delay doing something
            - delay something
            - delay somebody
    - [synonym] **put off**
        - to cancel a meeting or an arrangement that you have made with somebody
            - She put him off with **the excuse** (借口) that she had too much work to do.
        - to make somebody dislike somebody/something or not trust them/it
            - She's very clever but her manner does tend to put people off.
        - to disturb somebody who is trying to give all their attention to something that they are doing
            - Don't put me off when I'm trying to concentrate.
    - [example]We'll have to postpone the meeting until next week.

---

- undoable: can revert
    - Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations.[Design Pattern: Command]

---

- prior to: before
    - during the week prior to the meeting

---

- exhaustive: full, detailed
    - Here is an exhaustive list of rules

- non-exhaustive:
    - Here is a non-exhaustive list of (optional) rule

---

- For the sake of: in order to get or keep something
    - For the sake of comprehension, I’ll assume that the data in the buffer are not locked by latches

---

- end up: to find yourself in a place or situation that you did not intend or expect to be in
    - **end up doing something**: I ended up doing all the work myself.
    -  If you go on like this you'll end up in prison.
    -  If he carries on driving like that, he'll end up dead.

- end up with: Get as a result of something
    - He tried hard but ENDED UP WITH a poor grade.

---

- disappear, vanish, etc. into thin air: to disappear suddenly in a mysterious way
    - Durability ensures that Transaction 1 won’t disappear into thin air if the database crashes just after T1 is committed.

---

- ACID: Atomicity[ˌætəmˈɪsɪti], Isolation, Durability, Consistency

---

- granularity: is the extent to which a material or system is composed of distinguishable pieces or grains.
    - Of course a real database uses a more sophisticated system involving more types of locks (like intention locks) and more granularities (locks on a row, on a page, on a partition, on a table, on a tablespace) but the idea remains the same.

---

- overhead: regular costs that you have when you are running a business or an organization, such as rent, electricity, wages, etc.
    - there is no overhead from the “fat and slow” lock manager
    - High overheads mean small profit margins.

---

- Serializable: The SQL norm defines 4 levels of isolation
    - Serializable, Repeatable read, Read committed, Read uncommitted

---

- Data versioning and locking are two different visions: optimistic locking vs pessimistic locking.

---

- integrity: the state of being whole and not divided
    - Because the transaction has broken the integrity of the database (for example you have a UNIQUE constraint on a column and the transaction adds a duplicate)

---

- Database Log Record: Each operation (add/remove/modify) during a transaction produces a log. This log record is composed of
    - LSN(A unique Log Sequence Number), TransID, PageID, PrevLSN, UNDO, REDO

---

- mess: a condition in which things are dirty or not neat.
    - ARIES uses only logical UNDO because it’s a real mess to deal with physical UNDO.

---

- chronological order: chronological order
    - Each log has a unique LSN. The logs that are linked belong to the same transaction. The logs are linked in a chronological order (the last log of the linked list is the log of the last operation).

---

- clustered:
    - how to manage clustered databases and global transactions

- snapshot:
    - how to take a snapshot when the database is still running
- compress:
    - how to efficiently store (and compress) data

---

- rock-solid:
    - think twice when you have to choose between a **buggy** NoSQL database and a **rock-solid** relational database.

---

- hit the ground running: to be ready to work immediately on a new activity
    - His previous experience will allow him to hit the ground running when he takes over the Commerce Department.


---

- lead the pack: to be first or best of a group
    -  For the second week in a row, the new Star Wars movie leads the pack at the box office.

---

- low-hanging fruit:  a course of action that can be undertaken quickly and easily as part of a wider range of changes or solutions to a problem
    - first pick the low-hanging fruit.
    - Reducing HTTP requests and optimizing database queries are low-hanging fruit that noticeably improve application performance and response time.

---

- infallible: a person or thing that is incapable of error or failure
    - HHVM is just fine for your production server, but it’s not infallible. I recommend you keep tabs on HHVM’s master process with Supervisord.

---

- HHVM: The first initiative is HHVM, or the Hip Hop Virtual Machine.
    - This alternative PHP engine was released in October 2013. Its just-in-time (JIT) compiler provides performance many times better than PHP-FPM.

---

- seamless: having no seams;
    - Hack is a server-side language that is similar to and seamless with PHP.

---

- dialect:
    - Hack’s developers even call Hack a dialect of PHP.

---

- Zend Engine:
    - HHVM is the first true competitor to the traditional Zend Engine PHP runtime.

---

- reap:To harvest
    - Both HHVM and the Zend Engine will improve, and PHP developers will reap the benefits.


---

- bee's knees: informal an excellent or ideally suitable person or thing

---

- it pays to:
    - static factory methods and public constructors both have their uses, and it pays to understand their relative merits


---

- in preference to: 优于，优先于
    - Avoid creating unnecessary objects by using static factory methods (Item 1) **in preference** to constructors on immutable classes that provide both.
    - In the example that follows, a static member class is used in preference to an anonymous class to allow the concrete strategy class to implement a second interface, Serializable

- be preferable to: 优于
    - the static factory method Boolean.valueOf(String) **is almost always preferable to** the constructor Boolean(String) .

---

- performance gains: 性能提升
    - **Using a static initializer** results in significant performance gains if the method is invoked frequently.

---

- puzzling over: 苦恼；冥思苦想
    - It is not uncommon for a programmer to write an equals method that looks like this, and then spend hours puzzling over why it doesn’t work properly:

---

- To avoid the duplication of effort: 避免不必要的
    - To avoid the duplication of effort and save memory, you can add common properties and methods to the prototype property of the constructor

---

- is padded with: 用... 填充
- leading zeros: 前置0
    - If this number is too small to fill up its field, the field is padded with leading zeros. For example, 123's representation will be 0123

---

- resorting to: 求助于；诉诸与；
    - Unfortunately, the Cloneable interface fails to serve this purpose (permit cloning). Its primary flaw is that it lacks a clone method, and Object ’s clone method is protected. You cannot, without resorting to reflection (Item 53), invoke the clone method on an object merely because it implements Cloneable.
    - Even a reflective invocation may fail

---

- it pays to:值得去花时间
    - Despite this flaw and others, the facility is in wide use so it pays to understand it.

---

- spell out: 讲清楚
- as of： 自从...起
    - The Cloneable interface does not, as of release 1.6, spell out in detail the responsibilities that a class takes on when it implements this interface.

---

- consist of: 由...构成
    - The hash table's internals consist of an array of buckets

---

- approach to doing: 做...的方法
- resulting: 结果的
    - A final approach to cloning complex objects is to call super.clone, set all of the fields in the resulting object to their virgin state

---

- risk-prone: 有风险的
    - The copy constructor approach and its static factory variant don’t rely on a risk-prone extralinguistic object creation mechanism

---

- associated with: about
    - Given all of the problems associated with Cloneable , it’s safe to say that other interfaces should not extend it

---

- pretty: 格式优雅
    - If you run the application now, you should see a list of notes. it's not particularly pretty or useful yet, but it's a start

---

- shoot yourself in the foot:  搬起石头砸自己的脚
- indiscriminately: adv. 不加选择地；任意地
    - You should not kill processes indiscriminately, especially if you don't know what they're doing. You may be shooting yourself in the foot.

---

- scratch the surface: 触及表面; 还停留在肤浅的表面
    - This discussion has barely scratched the surface of how to use disks and other storage devices on Linux System

- from scratch: 白手起家；从头做起
  - This page will outline the steps necessary to generate a full set of indexes from scratch based on consumption of a new database image in to an environment.

---

- put off: 打扰；使苦恼；使心烦; 干扰
    - Don’t be put off by the mathematical nature of this contract.

---

- go over: 复习; 查看; 研究;
    - Let’s go over the provisions of the compareTo contract.

---

- forgo: (vi, vt) 放弃；停止；对…断念
    - there is no way to extend an instantiable class with a new value component while preserving the compareTo contract, unless you are willing to forgo the benefits of object-oriented abstraction

---

- in place of: 代替
    - sorted collections use the equality test imposed by compareTo in place of equals .

---

- work your way down: 然后按您的方式往下做
    - You must start with the most significant field and work your way down.
    - An easy approach is to start at the top of the XML document and work your way down.

---

- feel pretty comfortable with:
- dive into
    - If you’ve read all those titles and you feel pretty comfortable with those topics, it’s time we dive into the evolution of JS to explore all the changes coming not only soon but farther over the horizon.

---

- wait around: 呆呆地等；空等
    - It’s not just waiting around for years for some official document to get a vote of approval, as many have done in the past.

---

- would recommend doing:
    - I’d recommend using just one let Declarations.

---

- enclose: To surround on all sides; close in
    - a valley that is enclosed by rugged peaks.
    - traditional var-declared variables are attached to the entire enclosing function scope

---

- old-school: 老派, 老式学院派
    - doing things in the old-school pre-ES6 way

---

- fuzzy: 模糊的
    - If that’s still a bit fuzzy, go back and read it again, and play with this yourself.

---

- be thought of as: 被认为是
    - super is typically thought of as being only related to classes.

---

- resolve to: To become separated or reduced to constituents.
    - super here would basically be Object.getPrototypeOf(o2), resolves to o1 of course

---

- dereferenced: 解除引用
    - "A" will remain in memory until the timeout is triggered and the function is dereferenced

                    // Memory leaks
                    (function outerFunction() {
                        var A = 'some variable';
                        setTimeout(function(){ alert('I have access to A whether I use it or not'); }, 5);
                    })();

---

- Meh[me]: Used to express indifference, apathy, or boredom.

---

- trained eye: 群众的眼睛是雪亮的
    - The average person would perhaps not notice, but to the trained eye and ear there is plenty happening.

---

- is inversely proportional to: 成反比的
    - I’d say that the readability gains from => arrow function conversion are inversely proportional to the length of the function being converted

---

performance hit:

---

- Some things to note:
- It’s also important to note that: 我们应该注意到
    - It is not insignificant to note that super behaves differently depending on where it appears.
    - Before going into the details of how a system call works, we note some general points

---

- a match: 一个匹配
    - The Regular Expression does not have a ^ start-of-input anchor, free to move ahead to look for a match.

---

- ad hoc: adj. 特别的 adv.特别地
    - JS developers have been ad hoc designing and implementing iterators in JS programs since before anyone can remember, so it’s not at all a new topic.

- on an ad hoc basis: 权宜之计
    - The meetings will be held on an ad hoc basis

---

- when considering: 当考虑
    - iterators can also be thought of as controlling behavior one step at a time. This can be illustrated quite clearly when considering generators

---

- go beyond: v. 超出；胜过
- **completed** signal: 完成信号
    - You have to call next() again, in essence going beyond the end of the array’s values, to get the completed signal done: true .

---

- be tempted to: 很想; 忍不住;
    - Since there can only be one default per module, you may be tempted to design your module with one default export of a plain object with all your API methods on it.

                    export default {
                        foo() { .. },
                        bar() { .. },
                        ..
                    };

---

- in exchange for: 作为…的交换
    - Many developers would be quick to point out that such approaches can be more tedious, requiring you to regularly revisit and update your import statement(s) each time you realize you need something else from a module. The tradeoff is in exchange for convenience.

---

- off the bat: immediately
    - Let me say right off the bat that I don't blame you for this problem. I know who you mean, but I can't think of his name right off the bat.

---

- syntactic sugar
- the strong tide of:
    - Even though JS’s prototype mechanism doesn’t work like traditional classes, that doesn’t stop the strong tide of demand on the language to extend the syntactic sugar so that expressing “classes” looks more like real classes.

---

- in the habit of: 有…习惯
    - It means that if you’re in the habit of taking a method from one “class” and “borrowing” it for another class by overriding its this , say with call(..) or apply(..) , that may very well create surprises if the method you’re borrowing has a super in it.

---

- This is an important detail to note: 这是一个重要的细节要注意

---

- deviation/limitation: 差别/限制
    - Another perhaps surprising deviation/limitation of ES6 subclass constructors
- It boils down to: 简单说来; 归结为
    - you cannot access "this" until super(..) has been called. it boils down to the fact that the parent constructor is actually the one creating/initializing your instance’s this .

---

- artifact: 工件
    - An artifact is a file, usually a JAR, that gets deployed to a Maven repository.
    - A Maven build produces one or more artifacts, such as a compiled JAR and a "sources" JAR
    - Each artifact has a group ID (usually a reversed domain name, like com.example.foo), an artifact ID (just a name), and a version string. The three together uniquely identify the artifact.
    - A project's dependencies are specified as artifacts.

---

- it is not permitted to: 不允许
    - If a method overrides a superclass method, it is not permitted to have a lower access level in the subclass than it does in the superclass

---

- if any, : 若有的话; 如果有的话
    - The doctor will follow up the patient in future for occurrence of disease, if any.

---

- Another way of thinking about
    - Another way of thinking about a promise is as an event listener, upon which you can register to listen for an event that lets you know when a task has completed.

- way of conceptualizing:
    - Yet another way of conceptualizing a Promise is that it’s a future value, a time-independent container wrapped around a value.

---

- goes for: (1)apply to
- The same goes for: 这同样适用于
    - Children are not allowed and that goes for senior citizens, too.
    - p1 and p2 will essentially identical behavior. The same goes for resolving with a promise

                    var p1 = Promise.resolve( 42 );
                    var p2 = new Promise( function pr(resolve){ resolve( 42 ); });

- goes for: (2)agree;  give an affirmative reply to; respond favorably to;
    - I go for this resolution

---

- be much more preferable: 即更为可取; 更好的;
    - However, there’s a much better option for expressing async flow control, and it will probably be much more preferable in terms of coding style than long promise chains.

---

- It’d be tempting to: 容易让人有同意的倾向
- assume: 想当然的认为
    - It’d be tempting to look at a feature named “typed array” and assume it means an array of a specific type of values, like an array of only strings.

---

- wherever possible:    
    - Immutable classes should take advantage of this by encouraging clients to reuse existing instances wherever possible.

---

- suppose that: 假如; 假设
    - For example, suppose that you have a million-bit BigInteger and you want to change its low-order bit

---

- is inversely proportional to: 成反比的
- proportional to: 与……成比例
    - The operation requires time and space proportional to the size of the BigInteger

---

- potential: n. 可能性
    - Immutable classes provide many advantages, and their only disadvantage is the potential for performance problems under certain circumstances.

---

- proceed with: 继续进行
    - Please proceed with what you are doing.
    - The mocks demonstrate that the tests can pass, serves as prototypes for the provider teams, and enables the coordinator teams to proceed with development

-  press ahead with: 继续进行
    - THE Government is to press ahead with plans to make it compulsory to put calories on menus in a bid to tackle Ireland's obesity crisis.

-  carry on: 继续进行
    -  His encouragement determined us to carry on with the study. 他的鼓励使我们决心继续学下去。
---

- leave sb with:
    - . If you use abstract classes to define types, you leave the programmer who wants to add functionality with no alternative but to use inheritance.

---

- irritate
- deficient

---

- identify: 识别
    - This numbering scheme is not normally visible to programs, which identify system calls by name.

- specify: 指定
- vice versa
    - Each system call may have a set of arguments that specify information to be transferred from user space to kernel space and vice versa.

---

- obsolete['ɒbsəliːt]: (adj.) 废弃的
    - cmr_id on opportunity is obsolete but still active in the code and ux, next sprint

---

- be jumbled together: 乱七八糟地混做一团浆糊
    - Readability is further harmed because multiple implementations are jumbled together in a single class. (one shortcoming of tagged classes)

---

- appropriate: [ə'prəʊprɪət] adj. 适当的；恰当的；合适的
    - tagged classes are seldom **appropriate**.

---

- be tempted to: 忍不住;
    - If you’re tempted to write a class with an explicit tag field, think about whether the tag could be eliminated and the class replaced by a hierarchy.

---

- more than sufficient: 绰绰有余
- feed: give food to
    - A decent drawing program and a word processor are more than sufficient for our purposes.
    - agriculture is now so mechanized that only about 2 percent of American workers make a living as farmers who can feed the whole country more than sufficient.
- A be fed with B: 向A提供B
    - The market has to be fed with an endless supply of goods. 必须向市场提供源源不断的商品 
---

- Only after...was/were there: 从..之后 才有了
    - Only after the law of visual stay was discovered was there the art of cartoon and animation and only after the invention of projectors was made was there the boom of silver screen

---

- complement and facilitate: 补充和促进
    - art is as weighty as science and technology to human advancement and they actually complement and facilitate each other.

---

- enclosing:
    - A nested class should exist only to serve its enclosing class. (Item 22)

---

- All but the first: 除了第一个所有的
    - All but the first kind are known as inner classes.
    - (static member classes, nonstatic member classes, anonymous classes, and local classes)

---

- happen to be: 碰巧是；恰巧是
    - [A static member class] It is best thought of as an ordinary class that happens to be declared inside another class and has access to all of the enclosing class’s members, even those declared private.

---

- in the declaration:
    - the only difference between static and nonstatic member classes is that static member classes have the modifier static in their declarations.

---

- in isolation: 孤立地；绝缘
    - If an instance of a nested class can exist in isolation from an instance of its enclosing class, then the nested class must be a static member clas

---

- thereafter: 其后；从那时以后
    - The association between a nonstatic member class instance and its enclosing instance is established when the former is created; it cannot be modified thereafter.

---

- in question: 讨论中的；成问题的；考虑中的
    - It is doubly important to choose correctly between a static and a nonstatic member class if the class in question is a public or protected member of an exported class.

---

- in the midst of: 在...之中
    - Because anonymous classes occur in the midst of expressions, they must be kept short—about ten lines or fewer—or readability will suffer.

---

- on the fly: While activity is ongoing
    - One common use of anonymous classes is to create function objects (Item 21) on the fly.

- on the fly:
    - 1. In a hurry or between pressing activities: took lunch on the fly.
    - 2. While moving: The outfielder caught the ball on the fly.
    - 3. In the air; in flight: The ball carried 500 feet on the fly.
    - 4. While activity is ongoing: A coach can change players on the fly in hockey. This computer program compiles on the fly when a script is executed.

---

- in common with: 与...一样; 与...有共同之处
    - Local classes have attributes in common with each of the other kinds of nested classes.

- in common: 共同的
    - For example, suppose you want to write a method that takes two sets and returns the number of elements they have in common.

---

- leave something to be desired: 不够完美的
    - Admittedly this error message leaves something to be desired, but the compiler has done its job, preventing you from corrupting the collection’s type invariant.
- leave much to be desired: 有很大改进空间
- leave nothing to be desired: 完美无缺, 尽善尽美

---

- in place of: 替换
    - The use of unbounded wildcard types in place of raw types does not affect the behavior of the instanceof operator in any way.

---

- opt(s) out of: 决定(从...) 退出
    - Set is a raw type, which opts out of the generic type system

---

- familiarize yourself with: 使...熟悉
    - Before you start, read Studio basics to familiarize yourself with the Studio environment and the terminology used, then refer to the topics in the help to find out how to complete specific tasks.

---

- comment out: 注释掉
    - A common developer practice is to comment out a code snippet, meaning to add comment syntax causing that block of code to become a comment, so that it will not be executed in the final program.

- uncomment:取消备注
    - If you want to test your controllers directly in your programming environment, you can uncomment the debug.

---

- One, but not both, of: 一个而不是两个都
    - [Format] awk 'pattern + {action}'
    - One, but not both, of pattern {action} can be omitted.

---

- present: (后置) 存在的
    - we only have to remove it if it is present; otherwise, insert it.

- existing: (前置) 现存的, 已有的
    - A renderer that delivers the output of the existing function in a new format.

---

- desired: 期望的, 期待的
    - Since the desired behavior is to toggle it on and off, we only have to remove it if it is present; otherwise, insert it.

---

- leave out/off:
  - Experienced JavaScript programmers learn to look at the line following a statement whenever they want to leave out a semicolon.
  - Leaving off a var/let/const declarator

---

- ready: (vt) 使准备好
  - I will use this wiki as the outline of what steps are taken to ready a test environment for its next release assignment.

---

- goes to: 发布到  (= is successfully deployed to)
  - This will occur every time a major release goes to production.

- goes live: 上线
  -  Using the current releases as an example, when R3.6 goes live it means the test system used for R3.5.0.X now will be come the N+2 release test environment and as such needs to be readied for that role.
---

- Using .. as an example: 以..为例
  - Using the current releases as an example, when R3.6 goes live it means the test system used for R3.5.0.X now will be come the N+2 release test environment and as such needs to be readied for that role.

---

- is tasked with doing: 是负责
  - This means that what was N+1 is now N and the test environment used for that release now is tasked with doing all of the production support for the weekly fix deliveries and any SEV 1 deliveries.

---

- be rotated to: 被转换成
  - The environment previously used for production support is now rotated to be the N+2 test environment

---

- after a successful Release deployment: 一次成功的发布之后
  - On the Monday after a successful Release deployment you will stop cast iron, apache on all web servers, optimizer, etc so that the system is no longer available to those that may have been using it. (This is because its no longer the valid environment for matching production as well as the first step to ready it for its new DB.)

---

- make sb do: 让某人去做某事
  - Once the new masked production database from the release deployment is made available restore that database to the servers and get them up in PEER status.

- get up: To find within oneself
  - Once the new masked production database from the release deployment is made available restore that database to the servers and get them up in PEER status.

> 1. To arise from bed or rise to one's feet: She got up and opened the door.
> 2. To climb: How long will it take to get up the mountain?
> 3. To act as the creator or organizer of: got up a petition against rezoning.
> 4. To dress or adorn: She got herself up in a bizarre outfit.
> 5. To find within oneself; summon: got up the nerve to quit. 鼓起勇气出去

---

- HADR: 高可用性灾难恢复(High Availability Disaster Recovery)
  - This is for US HADR cluster, for EU database would be a simple restore

---

- take from: 从...抽取
- be unique to: 独一无二 ; 是唯一的
  - When ever taking a database from another system you will have to execute the set of scripts that define the EU database server as well as the passwords for all the users as they would be unique to each environment

---

- on a server: 在某台服务器上
  -  In addition to the database there is a copy of the web image provided from production to match the database.  You will restore this on the services web server.(svt<x>ws01)

---

- be in use: 在使用中
- in use: 使用中
  - Using the masked config, config_override and sfa.variables files as the starting point, update them to be appropriate for the test environment in use.

---

- with .adj: 随着..  
  - With the databases restored and web server up and functional you can now start to
  - 随着数据库被恢复了, web服务器开启并且可用了, 你可以开始生成

---

- matching: adj. 相匹配的
- go with: 与…相配
  - With the databases restored and web server up and functional you can now start to generate the set of elastic search indexes so that you have a matching set of indexes to go with the database

---

- complete: adj. 完整的；完全的；彻底的
- consume: vt. 使用, 消耗
  - Once indexes are complete, use the esgrabber system to create a backup for this starting point and so that it is available for other systems that will consume this database

---

- catch up to: 赶上
  - You are now ready to perform any necessary deployments to catch up to production as well as the N+1 release and finally the latest build for the N+2 release that this environment is intended to support

---

- regarding: = about
  - The RTC_2423 process is outlined in the page regarding creating input files and provisioning users.

---

- be deemed: 被认为
  - So long as the vast majority are successful its deemed a success and just wait to see if any users complain about access not working and address accordingly.

---

- provision:
  - (vt) 供给provision；提供provision; 以……供给provision
    - Similarly but only once cast iron is also up and running you can provision the latest set of BP test users.
  - (vi) To take preparatory action or measures 采取预备方案
    - A bank must provision against losses from bad loans.

---

- in greater detail: 更详细地
  - hat too is outlined in another page in greater detail and I will be uploading my latest set of xml files to that as part of my transition.

---

- on the same page: 意见一致;
  - just so everyone is on the same page on what days and time to expect deployments to SVT4/5/6

---

- next feat: 我的下一项工作
  - my next feat will be to try and get sugar to change their sev1 delivery time to better align with your schedules

---

- outline: 列举出
- regarding: 关于
  - This page is to outline the different types of deploys and general rules regarding what gets deployed during these types of deployments.

---

- deploy/patch: 一个部署, 补丁
- expedient: adj.权宜的
	- A severity 1 deploy/patch could occur at anytime and generally is needed the most **expedient path** to production as possible.

---

- downtime: 停机时间
	- they require either no downtime or minimal down time during the week. 

--- 

- is applicable to: 适用于
	- If the patch only effects the SC4IBM user server then only apply the patch to that server.
- apply sth to sth: apply the patch to 将这个补丁应用到
	- When QRR is involved then you have to apply the patch to ALL web servers.

---

- deprecated: 弃用
	- Since this code is deprecated it cannot support the new Roles that come available in the latest release and future releases so for now you have to manually update those after the input file is created.

---

- proceed: vi. 开始；继续进行；发生；行进

- But before we proceed, it is important to correct a common misapprehension that async is faster than multithreading

---

- be processed: 被处理
- hand control to: 把控制权移交给...
	- All event notifications are processed in the event loop when it calls select. Hence fetch must hand control to the event loop, so that the program knows when the socket has connected. 

---

- dive deeper: 更深入地了解
	- he subsequent articles in this series dive deeper and provide implementation examples.

---
- afterwards: 
	- you may have more questions afterwards

- beforehand: in advance - 提前; 事先，预先;

- back on track: **回到刚才的话题** ;重回正轨; 重上轨道; 改过自新
	- It may take some time to get the British economy back on track

- wouldn't use:
	- you wouldn't use it

---

-heads up:  as a warning to watch out for a potential source of danger, as at a construction site.
    - thanks for the heads up

---

- intention was to: 原本的意图是
    - Brian D's intention was to update the wiki as the environments changed. I think we should continue that practice as SC roles through different releases.

---

- went through: 快速浏览
    - I went through some sametime messages and this is what I have from Ray.

---

- get it changed: 
    - I'll get it changed with system admin in the morning.

---

- ad hoc: 
    - adv. For the specific purpose,
        - A committee formed ad hoc to address the issue of salaries.
    - adj. Formed for or concerned with one specific purpose
        - an ad hoc compensation committee.
    - adj. unplanned
        - an ad hoc committee meeting
        - Making this procedure more formal, however, may cause the employer to lose some flexibility to make ad hoc changes to the plan in the future

---

- thanks for the heads up: = thanks for letting me know in advance

---

- trailing: adj. 后面的；拖尾的
    - A NUM, --after-context=NUM: Print NUM lines of **trailing context** after matching lines.

- leading:
    - B NUM, --before-context=NUM: Print  NUM  lines  of  **leading  context**  before matching lines. 

---

- walk sb through

---

- consolidation

---

- escalate

---

- follow up on: 追踪；继续采用
    - following up on this, would someone give us the uid/pwd to scnode4, so that we can do this during our timezone, please? (also, the directory where we can delete the files.)  Then we wouldn't have to bother anyone.

---

- generic: 普遍的 普通的 泛
    - The SQL30082N error message is fairly generic and the most important is the reason code "19" follow by the "USERID
        DISABLED or RESTRICTED" message.

---

- from scratch: 从头做起 From the very beginning.
    - create the database from scratch
    - he baked the torte from scratch
    - she built her business up from scratch
    -
- scratch the surface: To investigate or treat something in superficial or preliminary fashion.

---

- reside: make one's home in a particular place or community
    - Create a .toc file. This is done by running the inutoc command. You run this in the directory where your filesets reside. If you don't have the .toc file, your update will not work.

---

- look something like: 看起来像
    - I think the "git fetch" workflow here looks something like this, but I still have a lot to learn here

---

- spike: Originally defined within XP, it is used for activities such as research, design, investigation, exploration, and prototyping.
    -  The purpose of a spike is to gain the knowledge necessary to reduce the risk of a technical approach, better understand a requirement, or increase the reliability of a Story estimate.

---

- buy-in:
    - Adopting agile is an organization change which involves management. It is said that management buy-in is crucial
      for agile to succeed and that a lack of management support can be a barrier in agile transformations. There are
      different ways for management to support agile in enterprises.

refer to: https://www.infoq.com/news/2014/01/management-support-agile

---

- escalate: 
    - Delegation and escalation are two sides of the same coin. Delegation is giving work to someone in your team or
      maybe on the same hierarchical level as you. Escalation is giving work to someone above you, such as the project
      sponsor. The same principles apply for both task allocation exercises. 
    - As we’ve seen, the project tolerances provide a framework to establishing which tasks need to be escalated. Set
      project tolerances for time, cost, quality and anything else you can think of that is important to the stakeholder
      group. 
    - some people find it easy to escalate but not so easy to delegate.

refer to: [link](http://pmtips.net/blog-new/delegate-escalate-important-skills)

---

- headless:  simply means without a graphical display.
    - Many servers are "headless" and are administered over SSH for example.
    - including applications with a GUI and tools intended to run in a “headless” environment.

---

- To keep track:
    - I am not happy with the way this company has been managed lately, and so I am going to become more involved on a
      day-to-day basis. For example, from now on I am going to keep track of every cent we spend.
    - You see I am part of an organisation called Prakriti which keeps track of all these things.

---

- poker faced: 一本正经的面容；面无表情的人
    - Poker-faced liars could be caught out by a new technique that monitors tiny changes in blood flow and expression.

---

- bluff: NB
    - My friend had absolutely no clue how to solve that problem. It was a complete bluff! Confidence baby ;) 

---

- if I remember correctly: 如果我没记错的话

---

- how it goes
    - we can run the script and to see how it goes
 
---

- play around with: 对…尝试不同方法以找到最佳方案 [非正式] 
    -  If you play around with a problem or an arrangement of objects, you try different ways of organizing it in order to find the best solution or arrangement.

---

- bounce, with no luck: 反复重起， 没有效果
  - We have tried to bounce the connection with no luck.

---

- be compatible with:
  - In order to be compatible with other implementations (particularly TLS implementations), we constrain the allowed X.500 attribute types to a subset of the minimum supported set for X.509 certificates (specified in RFC 3280), plus the locality attribute

---

- TLS: Transport Layer Security
  - Transport Layer Security (TLS) and its predecessor, Secure Sockets Layer (SSL), are cryptographic protocols that provide communications security over a computer network

---

- take a closer look at:仔细看一下
  - if we take a closer look at state objects, we've got some properties.

---

- for the time being: 暂时, 眼下
  - We could undertake the work for the time being.
    我们可以暂时从事这项工作。
  - The most important for you guys, for the time being, is the contract code.

---

- subscribe to: 同意
  - So remember, we do not subscribe to the idiom that code is law.

---

- more often than not: 常常
- think long: 渴望
- think hard: 认真地思考
  - But more often than not, you'll think long and hard about what constaints you want to put in your contract code.

---

- presumably: adv. 大概
  - So we have a transaction where presumably a cash and a bond(债券) ar being swapped.
  - So, presumably, if we follow our rules so far only one of these should be correct.

---

- ascertain: vt. 确定；查明；探知
  - The contract code inside the bond contract would reference both the bond and the cash state objects to ascertain whether the bond trade is valid.
  - To ascertain this, the net traverses the row in the weight array(遍历权重数组) that contains all of the weights between N and the other nodes.

---

- deterministic & non-deterministic:确定性的　&　非确定的
- given: 考虑到
- integrity: 完整
  - it is sufficed to(足够) say that the contract code needs to be deterministic. The verification function needs to be a pure function. Each time we run it, we need it to return the same result given the same input. 
  - the changing data or introduction of randomness into the contract could change the result. Thus, you'd have side effects and this would significantly undermine the integrity of the ledger. 
  - Just to recap, the contract code is a "pure" function executed in a deterministic environment, on a need-to-know basis which verifies transactions.

---

- give you a flavour of: 简单地了解到
- trivial: 不重要
　　- There are very trivial simple examples. But they should give you a flavour of how you would write your contracts.

---

- give you a good idea of: 给你一个好的思路
- do with: 处理
　　- We've used some pseudo-code here. It looks a bit like python, but it should give you a good idea of what you can do with contract code.

---

- catch up with: 追赶上
    - Although J2EE was able to catch up with Spring, Spring never stopped moving forward.
    
---

- continue to do: 继续
- look bright for sth: sth的未来很光明
    - Spring has continued to progress in many areas. And the future continues to look bright for Spring.

---

- pretty much: 几乎，=almost
    - pretty much anything more complex than a Hello World example

---

- Coupling, tightly coupled code: 耦合，紧密耦合的代码
    - tightly coupled code is difficult to test, difficult to reuse, and difficult to understand 

---

- With the sth in hand: 只要有sth在手
    - With the mock object in hand, you create a new instance.

---

- a common approach: 通用的办法
    - In Spring, there are many ways to wire components together, but a common approach has always been via XML.

---

- on our radar: 在我们的视线内
    - Last year, Kotlin wasn’t even on our radar.

---

- ever-changing: 不断变化,  日新月异的
    -  These three classes embody the functionality of generating ever-changing stock prices that are published to topics on which the consumer is subscribed.

---

- keep in mind: 请注意
    -  Please keep in mind that it is the handler's responsibility to release any reference-counted object passed to the handler. z

- please note:
    - please note that this is a tedious process, and you do not need to do that in most cases.

---

-  go over: 复习
    - Nevertheless, there are instances when it makes sense to use UDP instead of TCP,
      and we will go over this design choice in Section 22.4.

---

- from the ground up: 彻底
    - Netty is asynchronous and event-driven from the ground up

---

- to a bare minimum: 极小量
    - There are a few adapter classes that reduce the effort of writing custom ChannelHandlers to a bare minimum, because they provide default implementations of all the methods defined in the corresponding interface.

---

- Liaise: vi 保持联络
    - Liaise with Group Finance for the approval of the business case with in the existing PAR (Project Approval and Reporting Process) framework

---

- Back Propagation: 反向传播
    - In this model, back propagation algorithm based on forward networks was conducted to learn information of historical data and to train the network weights.

---

- right after: 就在...之后
    - What is interesting is the next pause which appears right after the first pause.

---

- bring up: 带来
    - This brings up the issue of duel funds, where as soon as the fork happens every coin in existence gets duplicated. So if you happen to have 100 coins from before the fork, you will now have 100 on the original chain and 100 on the forked chain. Of course, they won't be worth the same as each other and they are not transferable across chains.

---

- a clear majority of: 绝对多数
    - So the hope is that in the long run, one chain gains a clear majority of users and support.

---

- less urgent nature:
    - Most of these new features will be implemented via a soft fork due to its safe and less urgent nature.

---

- lead on to: 导致 result in
    - This starts to lead on to the quest of when a hard for should actually be taken. The moral and ethical dilemma is behind that decision who should take it and under what circumstances.

---

- aka: also known as: 
    - Remembered Sets aka RSets

---

- start ... from cold: 直接重启
    - In the unlikely event of the standby being down when the active fails, the administrator can still start the standby from cold.

---

- back and forth: 来来回回， 反复
    - He and colleagues have shuttled back and forth between the three capitals.

---

- every now and then: 有时， 时常 = from time to time； occasionally
    - Every now and then I like to walk along the beach and forget my problems
    - I meet him every now and then on the street．
- now and again: 偶尔
    - Now and then he goes to a ball game
    - Every now and then she would glance up at the clock．她不时抬头看看钟。

---

- awkward: 笨拙
    - By exposing its filesystem interface as a Java API, Hadoop makes it awkward for non-Java applications to access HDFS.

----

- come with: 一起供给
    - Hadoop comes with a useful program called distcp for copying data to and from Hadoop filesystems in parallel

- make use of: = use
    - we make use of the handy IOUtils class that comes with Hadoop for closing the stream in the finally clause.

---

- with ... in hand:
    - With a FileSystem instance in hand, we invoke an open() method to get the input stream for a file

---

- transparently: 通明地
    - This happens transparently to the client, which from it point of view is just reading a continuous stream.

----

- corrupted: 破坏的
    - If a corrupted block is found, the DFSInputStream attempts to read a replica of the block from another datanote.

---

- instructive: 有启发意义的
- clarify: 阐明， 弄清楚
- coherency: 一致的
    - Next we'll look at how files are written to HDFS. Although quite detailed, it is instructive to understand
      the data flow because it clarifies HDFS's coherency model

---

- It’s possible, but unlikely: 有可能大但是基本不会出现
    - It’s possible, but unlikely, for multiple datanodes to fail while a block is being written.

---

- finish doing:
- signal: vi/vt 发送信号
    - when the client has finished writing data, it calls close() on the stream. This action flushes all the remaining
      packets to the datanode pipeline and waits for ack before contacting the namenode to signal that the file is complete.

---

- trade-off: 权衡
    - it is a trade-off between data robustness and throughput
    - How does the namenode choose which datanodes to store replicas on?
      There’s a trade-off between reliability and write bandwidth and read bandwidth here.

- sit in the middle of: 位置居中, 权衡居中
    - gzip is a general-purpose compressor and sits in the middle of the space/time trade-off.

---

- implication: 含义, 意义
    - The coherency model has implications for the way you design applications.

- implicit: 隐含的
    - Closing a file in HDFS performs an implicit hflush().

- explicit: 明确的
    - An explicit task of iterative development is the need to rerun old tests for each new iteration.

---

- incompatible: 不兼容
    - If the two clusters are running incompatible versions of HDFS, then you can use the webhdfs protocol to distcp between them
      "hadoop distcp webhdfs://namenode1:50070/foo webhdfs://namenode2:50070/foo"

---

- evenly spread across: 平均地分布
- disrupt: vt 破坏
    - HDFS works best when the file blocks are evently spread across the cluster, so you want to ensure that "distcp"
      doesn't disrupt this.

---

- unless otherwise stated: 除非另有声明
    - Since Hadoop 2 is widely used and is the latest stable version, in the rest of this book the term "MapReduce" refers
  to MapReduce 2 unless otherwise stated.

- look in detail at: 仔细分析
    - Chapter 7 looks in detail at how MapReduce running on YARN works.

---

- In an ideal world & In the real world:
    - In an ideal world, the requests that a YARN application makes would be granted immediately. In the real world,
      however, resources are limited, and on a busy cluster, an app will often need to wait to have some of its requests
      fulfilled.

---

- There is a lag:　有一个滞后
    - Note that there is a lag between the time the second job starts and when it receives its fair share, since it has
      to wait for resources to free up as containers used by the first job complete.

---

- free up: 释放
    - When a job is submitted to an empty queue on a busy cluster, the job cannot start until resources free up from jobs
      that are already running on the cluster.

---

- carry with: 带着,含有
    - Each request and response carries with it lots of unnecessary HTTP header overhead and latency.
    - Because every I/O operation on the disk or network carries with it a small chance of introducing errors into the
      data that it is reading or writing, when the volumes of data flowing through the system are as large as the ones
      Hadoop is capable of handling, the chance of data corruption occurring is high.

---

- newfound: 新发现的,　刮目相看
    - I am not asking for a hug, I just want to get that look a newfound respect.

---

- in essence:本质上
    - Basically what I'm saying is, are you working on this at [Company], is this effort being funded by [Company].
      Is it being done on company time. WHich in essence makes it an official project.

---

- is welcome:
- be maintained:
    - Contribution is welcome. Plugins are maintained in the repository

---

- along with: 一起
    - the lines 2–3: This is the definition of the main function along with the command-line arguments.

---

-  a call to the function: 对这个方法的调用
    - The "if" statement contains a call to the socket function.

---

- the set of parentheses: 一对括号
    - The set of parentheses around the function call and assignment is required, given the precedence rules of C.

--- 

- as a matter of: 作为一个
    - As a matter of coding style, the authors always place a space between the two opening parentheses, as a visual 
      indicator that the left-hand side of the comparison is also an assignment.

---

- numerous limitations
- dotted-decimal string: 127.0.0.1
    - Older code uses the "inet_addr" function to convert an ASCII dotted-decimal string into the correct format, but
      this function has numerous limitations that "inet_pton" corrects.
    - Humans work better with names instead of dotted-decimal numbers(e.g., 128.138.141.172)

--- 

- byte-stream protocol
- boundaries
    - We must be careful when using TCP because it is a byte-stream protocol with no record boundaries.

---

- (HTTP) Hypertext Transfer Protocol
- (SMTP) Simple Mail Transfer Protocol
- (RPC) Sun Remote Procedure Call
- (DNS) Domain Name System

---

- purposely: 故意地
- put off: 推迟 postpone
- continue doing / continue to do
    - We purposely put off the discussion of these functions and countinue using IP addr and port numbers 

---

- set variable to value
    - every time we call one of the "pthread_" functions, we must allocate a variable, save the return value
      in that variable, and then set errno to this value before calling "err_sys"

- variable is set to value
    - "errno" is set to the specified constant

---

- clustter the code with braces: 用括号包围
    - To avoid clusttering the code with braces, we can use C's comma operator to combine the assignment into 
      "errno" and the call of "err_sys" into a single statement, as in the following:

      ```
      int n;
      if ( (n = pthread_mutex_lock(&ndone_mutex)) != 0)
        errno = n, err_sys("pthread_mutex_lock error");

      ```

---

- compromise: 妥协
- seems the least distracting: 最不容易令人分心
    - Our choice of capitalizing the first character of a function name is a compromise. 
    - Our style seems the least distracting while still providing a visual indication that other function is 
      really being call.

---

- be bound to: 被绑定到
    - The server's well-known port(13 for the daytime service) is bound to the socket by filling in an Internet
      socket address structure and calling bind.

---

- restrict sb/sth to doing 
    - Later we will see how we can restrict the server to accepting a client connection on just a single interface.

---

- all-uppercase
- beginning with
    - All of the positive error values are constants with all-uppercases names beginning with "E", and are normally
      defined in the <sys/errno.h> header.
---

- used throughout: 全部使用，通篇使用
    - The style used throughout the book for an infinite loop is: for(;;){} 

---

- Unix Epoch: 00:00:00 Jan 1, 1970, Coordinated Universal Time(UTC)

---

- A carriage return: \r
- linefeed: \n
    - A carriage return and linefeed are appended to the string by "snprintf", and result is written to the client 
      by write

---

- be not in the habit of doing: 不习惯做
    - If you're not already in the habit of using "snprintf" instead of the older "sprintf", now's the time to learn.

---

- remarkable: 值得注意worthy of attention
    - it is remarkable how many network break-ins have occurred by a hacker sending data to cause a server's call
      to "sprintf" to overflow its buffer

---

- up to some limit: 达到一定限制值
    - If multiple client connections arrive at about the same time, the kernel queues them, up to some limit, and returns
      them to accept one at a time.

---

- overlap: extend over so as to cover partly
    - if the server took more time to service each client, we would need some way to overlap the service of one client with
      another client

---

- iterative server: 迭代服务器，一次处理一个请求
- one at a time: 一次一个
    - Ther server is called an iterative server because it iterates through each client, one at a time.

- concurrent server:
- at the same time:
    - There are numerous techniques for writing a concurrent server, one that handles multiple clients at the same time.
    - fork:分叉
    	- the simplest technique for a concurrent server is to call the Unix "fork" function, creating one child processes 
          for each client.
    	- other techniques are to use threads instead of fork or to pre-fork a fixed number of children when server starts
---

- ISO & OSI: International Organization for Standardization (ISO) open systems interconnection (OSI) 
    - A common way to describe the layers in a network is to use the ISO OSI model for computer communication.
    - OSI Model (7 layers -> protocol suite): application & presentation & session ( -> application ), transport ( -> TCP,UDP), 
      network (->IPv4, IPv6), datalink & physical (->device driver & hardware)  

- other than: 除了
- MTU: maximum transfer unit
    - Normally, we need not concern ourselves with these layers(datalink & physical) other than being aware of some properties of the datalink,
      such as the 1500-byte Ethernet maximum transfer unit(MTU)

---

- fit into: 符合
    - we also note that Linux does not fit into the Berkeley-derived classificatoin: its networking code and sockets API were developed from scratch
    - If I gain more weight, I shan't be able to fit into my clothes.
    - Any new building must be fitted into the existing appearance of the city.

---

- for the sake of: 从...起见, 从...角度考虑
    - The topology shown in Figure 1.16 is interesting for the sake of our examples, but the machines are largely spreat out across the 
      Internet and the physical topology becomes less interesting in practice.
- call on: 拜访
- courtesy: 礼貌
    - she called on us merely for the sake of courtesy

---

- consecutive：连续不断
- leftmost: 最左边
    - The notation "/24" indicates the number of consecutive bits starting from the leftmost bit of the address used to identify the network and subnet.

- continuously: without interruption or gaps
    - TCP continuously estimates the RTT of a given connection, because the RTT is affected by variations in the network traffic.

--- 

- connection-oriented: 面向连接的
- connectionless: 无连接的  
- intended: planted or meant
    - TCP is a connection-oriented protocol that provides a reliable, full-duplex byte stream to its users.
    - UDP is a connectionless protocol. there is no guarantee that UDP datagrams ever reach their intended destination. 
      - a UDP client can create a socket and send a datagram to a different server, and receive serveral datagrams on a single socket, each from diff server.

---

- if we want to be certain: 如果我们想确定; able to be firmly relied on or be the case
- and the like: 以此类推， 等等
- if it is the case: 果真如此的话
    - if we want to be certain that a datagram reaches its destination, we can build lots of features into our application: ack(s) from the other end,
      timeouts, retransmissions, and the like.

    - they just want to be certain that their bytes are reliably sent and received

---

- byte-stream protocol:
    - we have already mentioned that TCP is a byte-stream protocol, without any record boundaries at all, which differs from UDP.

---

- reliable delivery:
- reliable notification
    - TCP cannot be described as a 100% reliable protocol; it provides reliable delivery of data or reliable notification of failure.

- reliability:
    - There is no reliability provided by UDP. UDP itself does not provide anything like ack(s), sequence #s, RTT estimation, timeouts, or retransmissions.

---

- round-trip time(RTT): How long to wait for an ack
    - TCP contains algorithms to estimate the round-trip time(RTT) between a client and server dynamically so that it knows how long to wait for an ack.
    - The RTT on a LAN can be millisecond while across a WAN, it can be seconds.

---

- segment: the unit of data that TCP passes to IP
- out of order: 次序颠倒; 发生故障
- the receiving application: 接收信息的服务器
- the receiving TCP
    - If the segments arrive out of order, the receiving TCP will reorder the two segments based on their sequence numbers before passing the data to the 
      receiving application
- the sending TCP:
    - The sending TCP uses the receiver's MSS(Maximum Segment Size) value as the maximum size of a segment that it
      sends.
---

- duplicate (v) - duplicated
- duplicate (a)
    - it can detect that the data has been duplicated, and discard the duplicate data.

---

- the amount of room available: space that can be occupied by 
- guaranteeing: DO NOT remove "ee"
    - the advertised window is the amount of room currently available in the receive buffer, guaranteeing that the sender cannot overflow the receive buffer.

---

- keep up with: 赶上，追的上
- at a rate: 以某种速率
    - UDP provides no flow control. It is easy for a fast UDP sender to transmit datagrams at a rate that the UDP receiver cannot keep up with.

---

- full-duplex: 全双工
- keep track of: 记录 
    - a TCP connection is full-duplex. This means that an application can send and receive data in both directions on a given connection at any time.
    - This means that TCP must keep track of state information such as seq numbers and window sizes for each direction of data flow: sending & receiving.
- simplex: 单工模式
- if desired: 如若需要的话 
    - After a full-duplex connection is established, it can be turned into a simplex connection if desired. (UDP can be full-duplex)

---

- router: ['ruːtə(r)] 路由器 
- routing protocols: 路由协议
- with help from: 
    - Similar robustness can be obtained from TCP with help from routing protocols.

- aid(vi) -> aid in
    - To aid in our understanding of the "connect", "accept", and "close" functions and to help us debug TCP applications using the "netstat" program,
      we must understand how TCP connections are established and terminated, and TCP's state transition diagram.

---

-  ...required for sth: sth需要的...
    - The minimum number of packets required for the exchange is three; (refer to three-way handshake)

- send on the connection:
    - The server must ack the client's SYN and the server must also send its own SYN containing the initial seq number for the data that the server will
      send on the connection.

---

- the person who is being called = the person being called: (简)短语替换从句
- answer the phone: 接起电话回答 ☎️
    - "accept" is when the person being called answers the phone. 

---

- long fat pipe options[term]: a network with either a high bandwidth or a long delay is called a long fat pipe.
    - "Window scale option" and "Timestamp option" are also called the "long fat pipe options"

---

- advertised window:
    - TCP provides flow control. TCP always tells its peer exactly how many bytes of data it is willing to accept from
      the peer at any one time. this is called the advertised window. 

---

- in lieu of: 代替
- instead(adv): 代替
    - In lieu of keeping an entire connection in TIME_WAIT, SCTP instead places verification tag values in TIME_WAIT.

---

- given: 考虑到
    - Given all these terms and definitions, the below figure shows what happens when an application writes data to a
      TCP socket

---

- is told of: 被告知
- transient: 短暂的
    - TCP will note this error and try sending the segment later. The application is not told of this transient condition.

---

- be tied to: 依赖于
    - The collection of PermGen was tied to the collection of the old generation, such that when either got full, both
      would be collected
      
- is bound by: 受…约束
    - Metaspace is not bound by a max threshold since it can expand as much as your native memory, but user can limit
      the growth by using the option -XX:MaxMetaspaceSize

---

- in parallel['pærəlel]:
    - I would make JVM do its work in parallel.(Maximize Throughput)

---

- what ... would look like.:会是什么样子
    - So this is what my Throughput Maximizing GC would like.
    - I thought about what my project would look like if I didn't review the existing workflow.
    
---

- in such a good fashion: 以好的方式
    - You should make sure that your concurrent marking and sweeping is doing it's job in such a good fashion that it 
      doesn't need much compaction effort.
      
---

- fit in: 适合
    - Parallel GC would fit in the Throughput Maximizer area, CMS GC would fit in the Latency Sensitive area, and Hotspot's
      latest collector G1 GC would be right in the middle.
      
---

- elapsed time: 运行时间
    - GC elapsed time is an indication of the amount of time it takes to execute stop-the-world GC events.
    
- responiveness: 响应能力
- induced: 诱发的
    - faster execution of GC events is equal to lower GC induced latencies, and hence your application responsiveness increases.

---

- fall back: go back to bad behavior 
    - So remember all GC, and that falls back to a full GC, are expensive, so you want to use more young GCs. Size your 
      generations and age your objects appropriately.
      
- fallback: adj
    - we will also talk about evacuation failures in G1 GC, and the fallback full collections.
 
 ---
 
 - contiguous:  连续的；邻近的
     - G1 GC is based on a new regionalized framework. The regions that form a particular generation are not contiguous.
 
---

- house:  给…提供住房; 收藏; 安置
- unoccupied:
    - Young Regions - Regions that house objects in the Eden and survivor Spaces.
    - Old Regions - Regions that house objects in the Old generation.
    - Humongous Regions - Regions that house Humongous Objects. it is contiguous in the particular case
                          and they are allocated out of the old generation.
    - Free Regions - Regions that are unoccuppied
     
---

- aligned: 校正；调准；调整
    - Use a tripod(三脚架) to align and steady the camera.
    - Place the document face down and align it against the top left corner of the document glass.
      将document面向下，对准玻璃板的左上角放置并关闭原稿外盖。 

- align (oneself) with: To support, agree with
- align (oneself) against: 反对
    - As soon as I explained how the plan would benefit the company financially, the CFO aligned himself with the idea

---

- heuristics: 启发
    - the number of regions in a particular generation can change between collections based on G1 GC's adaptive sizing heuristics.

---

- that sb be able to tolerate:某人能够忍受的
    - G1 GC's -XX:MaxGCPauseMillis determines the GC pause duration that users may be able to tolerate.

---

- versus
- the only thing that's different is ... versus ...: 唯一不同的是
    - The only thing that's different between them is the 101 interval versus the 200 interval pause time
    
---

- cluster & sparse: 群簇& 稀疏
- along the way I will make use: 在整个过程中，我将利用
    -  I explore different sparse matrix formats in R and moving data from R to H2O. 
       Along the way I use k-means clustering and topic modelling to explore textual data 
       
---

- reference to sth:
- be shown: 
    - you can the incoming reference to a region is shown
    
- as shown here: 如图所示
- Same goes with: 同样
    - Region X has its own RSet. as shown here. Same goes with Region Y and Region Z.
 
---

- no registery: 没有注册信息/记录
    - That pointer does not have to be registered there. So there is no registry there.
    
---

- be bogged down: (bog- vt 使陷于泥沼) 停顿；陷入困境
    - once a thread is in the termination protocol, it can attempt to steal work from other threads 
      that may still be bogged down by their tasks.

---

- for sure: 确实；毫无疑问地
    - We'll talk more about the remembered sets later, for sure.
    
---

- it is something to look out for: 这是一件值得注意的事情
- It is worthwhile to note: 值得注意的是
    - it's something to look out for if some of your threads are attempting termination while it's locked on some other thread
      that's not able to do that.
- it is noted that: 人们注意到…；有人指出

---

- pretty well: 相当好 
    - All of them played pretty well.
      他们所有人都打的很不错。
- pretty format HTML
    
- fondly call it ...: fondly 喜欢
    - I fondly call it, IHOP (-XX:InitiatingHeapOccupancyPercent)
    
---

- threshold is crossed: 越过临界值
    - After the marking threshold is crossed, G1 GC enters the concurrent marking phase.
    - I wanna figure out what's going on, why did that pause cross my 70 millisecond goal.
    
---

- piggyback:  adj 背着的; vt 背负(you carry them high on your back)
- as ...: 当…时
    - what's interesting is that this phase can happen at the same time as a young collection. 
      So it's piggybacked on a young collection.

---

- catch up: (口语) 聊聊天
    - let's go grab some coffee and catch up for a while

---

- the last resort: 最后手段/方法
- prove to be: 结果是; 证明是 
- at all costs: 无论如何，不惜任何代价
    - 	this fallback collection is a last resort for G1 and could prove to be very expensive - hence should be avoided at all costs

---

- diagnostic option:诊断的
    - -XX:+G1SummarizeRSetStats is a very useful diagnostic option that prints RSet summaries before and after a GC pause.
    
---

- x-axis: X轴
    - the x-axis is elapased time and the y-axis is the time taken by the pause.
    
- outlier: 异常值
- go beyond and then blow: 超过然后下降
    - We have a bunch of outliers that go beyond and then blow our pause time goal target.

---

- fine tuning: 微调
    - Now, next thing you need to do is to look at the GC logs to see what needs find tuning.
    
----

- snipped: 被剪断的
- snippet: 片断
    - I've only identified the revevant sections here, so I've snipped a lot of information.
    
---

- run the risk of: 冒着...的风险
    - if you have many objects configured in this manner, you run the risk of exhausting a database pool, or perhaps even
      having too many files open at once.
      
---

- at times... for other times...: 有时， 另外一些时候
    - At times, you need to run platform-specific code(implemented by JVM), for other times, it is possible to write a native method.

---

- has/have the capability to do: 有做...的能力
    - Every java object has the capability to hold a lock on it.

---

- hack: fix a computer program piecemeal until it works
- peruse: vt. 详细考察；精读
    - I'm not very good at hacking but I'll give it my best
    - If you discovered Netty this way, as many have, your next steps were probably to browse the site, download the code, 
      peruse the Javadocs and a few blogs, and start hacking.
      
---

- the latter: 后者
- the former: 前者
- at an appropriate time: 在适当的时候
    - This enables the latter to call the former at an appropriate time.
  
---

- out of the box: 开箱即用
    - Netty provides an extensive set of predefined handlers that you can use out of the box.
    
---

- have spoken of: 已经讲过
    - Although we’ve spoken of the client, the figure shows multiple clients connected simultaneously to the server.
    - We have spoken of this topic in detail
    
---

- bind to: 绑定到
    - The server will bind to this address to listen for new connection requests.

---

- be guaranteed to: 保证
    - All operations belonging to the same Channel are guaranteed to be executed      in the order in which they were invoked.

---

- apply to doing:适用于
    - ChannelHandler serves as the container for all application logic that 
      applies to handling inbound and outbound data.

- apply sth to sth:
    - Most frequently your application will employ a handler that receives a
      decoded message and applies business logic to the data.

- keep in mind:
     - please keep in mind that strictly speaking the term "connection" applies
       only to connection-oriented protocols such as TCP.

---

- wonder what happens:想知道发生了什么
    - Given that outbound and inbound operations are distinct, you might 
      wonder what happends when the two categories of handlers are mixed 
      in the same ChannelPipeline.

---

- prerequisite: 前提条件
    - The only prerequisite for this chapter is knowledge of the java 
      programming language.

---

- moderate: 中等的
- adequately: adv. 充分地；足够地；适当地 
    - While this approach to concurrency might be acceptable for a 
      small-moderate number of clients, the resources needed to support 
      100,000 or more simultaneous connections make it far from ideal.
    - This code handles a moderate number of simultaneous clients adequately.
      
---

- from the ground up: 彻底地，完全地
    - As we said earlier, Netty is asynchronous and event-driven from the 
      ground up.

---

- be introduced to: 被引见给
    - In this chapter you've been introduced to Netty's approach to 
      high-performance networking and to some of the primary components of its 
      implementation.

---

- dispatching:(n) 调度
    - Netty's asynchronous programming model is built on the concepts of Futures      and callbacks, with the dispatching of events to handler methods 
      happening at a deeper level.

---

- hook into: 嵌入到
    - these methods can be overriden to hook into the event lifecycle at the 
      propriate point.

---

- on a per ... basis: 基于每个...
    - the only metadata retained on a per-consumer basis is the offset or position of that consumer in the log.
    - is this tracking on a per project basis.

---

- turn one's back on: 背弃
    - it's clear that the company has turned its back on customers.

---

- the tit for tat: 针尖对麦芒
- full-blown:全面开花
- break out:突然发生，爆发; 突然发生
    - The tit for tat brings the two sides closer to a full-blown trade war. 全面开花的贸易战
    - He said he didn't expect a full-blown trade war to break out 

---

- go into: 进入到某种状态
    - the new tariffs would go into effect if xxx refuses to change its practices.
      如果xxx拒绝改变现有方式，关税将生效

---

- in the presence of: 在...前
    - the system would have to be able to guarantee fault-tolerance in the presence of machine failures.
      在主机错误时， 系统能够保有容错能力.

---

- is superior to:优于...
    - using the filesystem and relying on pagecache is superior to maintaining an in-memory cached or other structure

---

- amortize: 摊平；分期
- the overhead of the network roundtrip
    - to avoid too many small I/O operations, out protocol is built around a "message set" abstraction that naturally groups messages together. This allows
      network requests to group messages together and amortize the overhead of the network roundtrip rather than sending a single message at a time.

---

- enable doing:
    - to enable batching the Kafka producer will attempt to accumulate data in memory and to send out larger batches in a single request.
- allow doing:
    - The law allows doing this?

---

- a tight loop: 密集的循环
    - the deficiency of a naive pull-based system is that if the broker has no data  the consumer may end up polling in a tight loop.

---

- trivial: 琐碎的
    - what is perhaps not obvious is that getting the broker an consumer to come to agreement about what has been consumed is not a trivial problem.

---

- hand out = send
    - if the broker records a message as consumed immediately every time it is handed out over the network, then if the consumer fails to process the msg that msg will be lost.

---

- tacked-on: 附加的
    - this appears to be a tacked-on thing, not heavily used, and with large downsides. 
      看是来是附加的功能，不是经常使用， 并且伴随着很大的副作用

---

- Enclosed pls find: (deprecated, it is an old fashion)
    - Please find enclosed our price list.
    - Please find attached the updated contract.
    - Please find herewith my expense report for ice cream.
    - Here is . . . 
    - Enclosed are . . . 
    - Attached is . . . 
    - We have enclosed . . . 
    - I have attached . . . 
    - The attached proposal includes . . . 
    - The enclosed document shows . . . 
    - Please review the attached diagram . . . 
    - The attached spreadsheet covers . . . 
    - Please use the enclosed envelope to . . .

---

- built from the ground up
  - Is there another storage technology that you could use that was built from the ground up to scale?
