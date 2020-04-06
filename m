Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7971119F0B0
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Apr 2020 09:19:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLM2K-0004G2-P4; Mon, 06 Apr 2020 07:19:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jLM2F-0004Fq-Md
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 07:19:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rbrcOlsWKrqNX/A4spQM/JXJV4HJaCpTyZ+caI75Ivo=; b=P9nEOo0TH1AKW0AEKltKKSD9Vm
 vJYGQlTBGLq+U8RCgJzHXIzo2RdtJgx1vddtV37L7vmftUZeMPsboDAZPkRrTIaMLx0rKZd5+V93U
 1lpuD9rHTfK5snj6ZFtUmBGjIkg13/3fxEwk0qCpzosjHIsD9P/fj0wZzH9w0rnnDyoE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rbrcOlsWKrqNX/A4spQM/JXJV4HJaCpTyZ+caI75Ivo=; b=LoaAPkdirhwGkVoW5+Qk9MWVZz
 KOMsdvrYpqSQOapcMy5h4onqik3Gw6lt7NKUTA0i7rBgxSJe6W2i3D9wyp0c2OZjoS2byYXGpwQCs
 5TztvRXKIP5SPoBoauumfUh4UrLm+1SLzFGEyk+9YVmFkkwPIkgCpVIr/MXwMIMr2jus=;
Received: from mail-co1nam11on2077.outbound.protection.outlook.com
 ([40.107.220.77] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLM2B-005LVx-W3
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 07:19:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8UQwMDckdPPghr339jLSbgrh0pwfD18KqItPBgV5IoqOChHvgQJ8OhSC3V3oSeyIH3wZLCNVwJHuAc7tgIwlJJReAzIFQpOSCBamLar+LC95FmJ4pP1iUqwMo8mIon6yhtw6hDBE31ACoLD5g5yiMskmKs5ixGGHnb+nrNEjdyrUfYzvejoZTWiX+xL12v6dmxELeOyS9u3g0OpryQNwBKVrazpDeA/aaLJqy99L/DVMHbdt2DRw0NOSueBhh07GrKehZXBjUtu6NZcrGOUhXbdb76nall7xz5nnvWOvSkeWROTV+i5DmaiJzRlLGYAtTNlj1JspQiwb8FIC2OTlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rbrcOlsWKrqNX/A4spQM/JXJV4HJaCpTyZ+caI75Ivo=;
 b=kGDTxq/j3v1FeiZxmcC9Mw3USWvLeFPlsb17jzknVqjify8b9J31t+a1L3hOwnTp7iAlhRYyQkNcSDXg8suoB2pgEeZjFujRhqoytFQR1O5lnuCdITR8O3uRmRjIDQw4VGmsv8wDKagqxD+JD+VpsbbUh64a+wgWiyt8TYRow9AsOUbhFi1GbXCKnVlYJW4YlhSs8dr/4f28I7J6OeVoi8k/ZBNw7JTdg7NuMbclXBR4Q7kY7dDZHoRZjzvEJVA3sgpgKdSESqjw/snXh1AGgtcfqRtoQWaMPnTpwFUSDD4dQLTqhoxWtBx2TADuuxAx12hwHIIJ695H6Yu18JtEBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rbrcOlsWKrqNX/A4spQM/JXJV4HJaCpTyZ+caI75Ivo=;
 b=k51j9kmu10Ur78+tT7vaDoyhFa8YpbxoVfw1klArjQOB/uUUBZFSlLTacQYGp+gYeVzCRkZsn7IvDrsUcC09jLHHzb67AzmV8ln26bHhwF/0FFbpJYx2nI3ipWEx797bd/SrjlV0JjRjvL165P+el8RmC6uW9/DthwF2y4ECrEY=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4037.namprd11.prod.outlook.com (2603:10b6:a03:188::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Mon, 6 Apr
 2020 07:18:55 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289%6]) with mapi id 15.20.2878.017; Mon, 6 Apr 2020
 07:18:55 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC 1/4] tipc: introduce Gap ACK blocks for broadcast link
Thread-Index: AQHWBLXf9pINPAhgc0uY6mlEFzldx6hqW+XQgAE5FoCAACZaoA==
Date: Mon, 6 Apr 2020 07:18:55 +0000
Message-ID: <BY5PR11MB3894DF4039EC73301C57984184C20@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
 <20200328040309.4656-2-tuong.t.lien@dektech.com.au>
 <BY5PR11MB38949615D0738F94993B2C5984C20@BY5PR11MB3894.namprd11.prod.outlook.com>
 <AM6PR0502MB3925EEEF5D3C44E56EEFA1D1E2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
In-Reply-To: <AM6PR0502MB3925EEEF5D3C44E56EEFA1D1E2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ying.Xue@windriver.com; 
x-originating-ip: [114.240.85.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4a8b6a0-1e50-400e-0b8c-08d7d9fac44a
x-ms-traffictypediagnostic: BY5PR11MB4037:
x-microsoft-antispam-prvs: <BY5PR11MB4037A607BBF6E733CF2CCF6F84C20@BY5PR11MB4037.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(39850400004)(366004)(396003)(346002)(376002)(76116006)(110136005)(71200400001)(8676002)(7696005)(26005)(316002)(186003)(64756008)(66946007)(66446008)(6506007)(66556008)(66476007)(81156014)(52536014)(8936002)(55016002)(9686003)(4326008)(86362001)(2906002)(33656002)(478600001)(966005)(5660300002)(81166006);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UXXP9ZV6yhrPEYNt8sNBGslxY7YpBc+BOB0i9qH1bnYCnU7FZmVbwZPgTEznTam3K/lWikEdrBrxYyhbqCseeTmazspTrZv0yN70/DVDMqvhKUUx1TzWMyGamuWPCPzbqVno0uY3NpYkp0Nd30ZcQnOzFZ3P5myIaWTd9odMPT91b0hunmpbE9XuXTzT57GumXbqOWzXnetXhtrFvXRNYBZdU4vY7gGsePXll0ULHP1pDzS119Inlkjy1Ak4HQ92O54fn1ckSkoX2+CBxCPkRlIjHh3mz8+00kobOaNdgEmP5f4Ams32iYJF7Ehym006XQ+lbpoEmoS02qykglFlo3tQ9/OYo1fDKS/r2+CwXdJ20Swc8ijnHse8fVIQ2W9lNYi0GuYtK3ut7B5a/LlYkd3lF3/uE4lxaAtCZW4r2Xux/htUCwvyBbI2SAkTPqH0ezoHt0/qGM9zMJi2ZkS0+Rw3rie/CI21TTKFnk6391AWPP6T9GYoPnKCkZyYnPMEHWPUWW4k3IGG2ijHKPr6Bw==
x-ms-exchange-antispam-messagedata: StJ4M6SZhjSP/GaEq/pUB29/LD76ZT38yqB7jK1zKmAKwNzvm8hrs3rEVhGTWDJ8Q+Pb5TSj78/p0SOrZYn24F4cxXlBvE4TsncrMdEU4nBf4BcTXxThsV/UGgYBah4YtsEqQcE4mtbIgNA8VjAE9A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4a8b6a0-1e50-400e-0b8c-08d7d9fac44a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 07:18:55.2793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dorX0oK0qfCYQ3OAE7mNscslzByG7aF/kJ3dE8Mxhf3qrlmiUdPMYOLw44cTzHbZEB3AVjd0xlyWn6SipHcFBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4037
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.220.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.77 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLM2B-005LVx-W3
Subject: Re: [tipc-discussion] [PATCH RFC 1/4] tipc: introduce Gap ACK
 blocks for broadcast link
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


 31                       16 15                        0
+-------------+-------------+-------------+-------------+
|  bgack_cnt  |  ugack_cnt  |            len            |
+-------------+-------------+-------------+-------------+  -
|            gap            |            ack            |   |
+-------------+-------------+-------------+-------------+    > bc gacks
:                           :                           :   |
+-------------+-------------+-------------+-------------+  -
|            gap            |            ack            |   |
+-------------+-------------+-------------+-------------+    > uc gacks
:                           :                           :   |
+-------------+-------------+-------------+-------------+  -

which is "automatically" backward-compatible.

===
[Ying] In my opinion,  this patch will cause the backward-compatible issue below:

1) On the TIPC node with the patch:
When sending a 'PROTOCOL/STATE_MSG' message , its 'Gap ACK blocks' data field only contains bcl gap ack blocks, but no any unicast link gap ack block.
2) On the TIPC node without the patch:
Upon receiving the message sent by the node of case 1), this node will suppose its 'Gap ACK blocks' data field are unicast link gap ack blocks rather than broadcast link gap ack blocks.

[Tuong]: As you can see in the figure above, we have two different "b/ugack_cnt" fields which determine the number of broadcast/unicast gap ack blocks in the message. The "ugack_cnt" is fully identical to the "gack_cnt" in the old version (- without the patch) i.e. indicating the number of unicast gap ack blocks anyway, whereas the "bgack_cnt" was a reserved field.
So, in your situation, the sending side will send the message with the "ugack_cnt" = 0 and this is completely compatible to the old version that the receiving side will see no unicast gap ack blocks and just ignore the broadcast gap ack blocks (- it doesn't really know). Actually, there is also a sanity check on the length in the old code that will shortly ignore such the gap ack block report... So, we have no problem at all. That is why I've declared it backward compatible automatically.

>>[Ying]: Thanks for your clarification. Yes, you are right. Now it's really compatible between old and new versions.

So I wonder no backward-compatible issue will exist and everything will become pretty easy if we use LINK_PROTOCOL to only contain unicast gap ack blocks and use BCAST_PROTOCOL to convey broadcast gap ack blocks.
In other words, we don't need to enlarge current gap ack block space, and we don't need to change the current code related unicast gap ack blocks. Instead, we just need to add the support for broadcast gap ack blocks through BCAST_PROTOCOL rather than LINK_PROTOCOL. 

[Tuong]: The BCAST_PROTOCOL is currently only used for broadcast initializing or synching when a new peer joins, the old mechanism as broadcast NACKs is deprecated... I suppose that using the LINK_PROTOCOL is much more convenient since the traditional ack/gap reports for broadcast link is also made via the message, so we don't need to create a new code flow to handle the gap/ack blocks.
Actually, the change in the current code related unicast gap ack blocks is just to optimize the code e.g. removing an old functions, etc., there is no impact in its functionality.

>>[Ying]: Sorry, I forgot this comment: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=02d11ca20091fcef904f05defda80c53e5b4e793.
It made broadcast NACK delivered through link state. 

Okay, both unicast link and bcl gap ack blocked can be transferred in the same link state message. 

>>[Ying]: By the way, I have another minor comment:

As  "bgack_cnt" is defined after " ugack_cnt " in struct tipc_gap_ack_blks, please reverse their order in this struct description section.

/* struct tipc_gap_ack_blks
  * @len: actual length of the record
- * @gack_cnt: number of Gap ACK blocks in the record
+ * @bgack_cnt: number of Gap ACK blocks for broadcast in the record
+ * @ugack_cnt: number of Gap ACK blocks for unicast (following the broadcast
+ *             ones)
+ * @start_index: starting index for "valid" broadcast Gap ACK blocks
  * @gacks: array of Gap ACK blocks
  */
 struct tipc_gap_ack_blks {
 	__be16 len;
-	u8 gack_cnt;
-	u8 reserved;
+	union {
+		u8 ugack_cnt;
+		u8 start_index;
+	};
+	u8 bgack_cnt;
 	struct tipc_gap_ack gacks[];
 };




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
