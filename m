Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B496B19F20C
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Apr 2020 11:06:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLNi6-0003qI-Ey; Mon, 06 Apr 2020 09:06:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jLNi5-0003q4-57
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 09:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IGGtmcmsSXTuaBEN82iEmyuEM/Lnh0Lf7NrAG8F7ykw=; b=G4Yx/sDNxyBx1KIWC0P/6wtKmE
 WX1o2ZIPpIlOXmeyt5uEe9OVwbA06rDuco6Wnofkp/75xnVOkwg7j4ZItrvRSrsrlrVW4lTP2JGHV
 ObvNpJ8x65lKdsm8QcpYXgtz9xRmv5jJxigU89mAkmcwVy5PFF5HyH3hjTSYvQyoVa6Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IGGtmcmsSXTuaBEN82iEmyuEM/Lnh0Lf7NrAG8F7ykw=; b=dt+NWJv024GS2+6JhlGhhJEAK1
 WnjAcEHv36sVbKxnn0a4UaimLoaTxOsqLlMZIxJZbAcQH7OAx9c2JVoZ68skhMBUNEGHAs+Q2Iq0W
 69R+jtSe97+MPBFFWD+WE5oKYelQqBvxGokl/TjxcIL5KGmgEoJrj8xUlpMsHNy8zkyI=;
Received: from mail-db8eur05on2099.outbound.protection.outlook.com
 ([40.107.20.99] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLNi1-005OrM-GF
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 09:06:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KE4vA0UEWOajtbBfOQiNnfJM0FscGxbrdQ8YZdQUyW9Cre0HwsywNzfxHazVbBYlueYNO/FraWHMVOA1d2EWeADOB2xfipKkoeVxr/tqo409uBk46Wfnhv/nhndg++yPxoUri2FWWMRrb2uVXGKJxFhYoslUJm8DuCPuDRpTjc3ILfBBYA1F2jX8T3DPTaiYektJAESWCDR3liMhEs3VpiRGAw5H7y2PZCzBEOI3tAUCbbxe7KdGgL33tsx8+/ql4Frqr9MCWzQAkgcafDNj4jHnbNR25Gp74QPq8r/KN+jq8snnv+lYDdhDt9mB4bjZAAP/pkQeflsRCvFPhIdTzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IGGtmcmsSXTuaBEN82iEmyuEM/Lnh0Lf7NrAG8F7ykw=;
 b=MI+volsTD72ziTSbVBLBmVmw1NT5Y+B4HkRxby4mGI+lwpIgRishwjSqOtiwen08jKVRZSVZTOQD01OyA4XHh5EBOA1wMPOm2dGyxY09u3zyaLX3Mm3j21OxoewPCiJ3TvSKZaJBzmGUHS/A/eYe4khxAATO/f4icIXGrRL20L4mSH5+hQN2RjbmXUQ6SHCA6tuiEhT5gCoq3xwfT75fOQlQi2DfZqMN5ipDVgVXg4UMjlm9mA14/ylSSWWqJmROepJOPFYctdLuomcWCBEBGMUQSM9T//AET4vD263bJfxeZ5a3auM52pT7p22go4zsvEf/jeO822TArn5WRVqzlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IGGtmcmsSXTuaBEN82iEmyuEM/Lnh0Lf7NrAG8F7ykw=;
 b=ma9TmCkTfUW6fTZAAw8bLa03+2loisoVLcl0fgItezw+WrnBgbIWQjlcKkTKGe6ktzDBmPH7EY/8Os0rfX0DJxnnbsr6Qk1RjZHLqi3RqmHthw8fnwzWom7QE3u8xUDPZTy17Jq+yw0PDFmapsq7CKyEms0w+H37JUAwGoOd8gM=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3861.eurprd05.prod.outlook.com (2603:10a6:209:2::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.17; Mon, 6 Apr
 2020 09:06:14 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2878.018; Mon, 6 Apr 2020
 09:06:14 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: "Xue, Ying" <Ying.Xue@windriver.com>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC 1/4] tipc: introduce Gap ACK blocks for broadcast link
Thread-Index: AQHWBLXYq7r2SAWviEmKWsozxkR0y6hrgkGAgAAE1GCAADbCgIAAHbsA
Date: Mon, 6 Apr 2020 09:06:14 +0000
Message-ID: <AM6PR0502MB39254E0A16E466B9C0F3B794E2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
 <20200328040309.4656-2-tuong.t.lien@dektech.com.au>
 <BY5PR11MB38949615D0738F94993B2C5984C20@BY5PR11MB3894.namprd11.prod.outlook.com>
 <AM6PR0502MB3925EEEF5D3C44E56EEFA1D1E2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
 <BY5PR11MB3894DF4039EC73301C57984184C20@BY5PR11MB3894.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB3894DF4039EC73301C57984184C20@BY5PR11MB3894.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tuong.t.lien@dektech.com.au; 
x-originating-ip: [113.22.229.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1adcda0f-1866-497a-ad59-08d7da09c241
x-ms-traffictypediagnostic: AM6PR0502MB3861:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB38619DAB354731C6FC076B0AE2C20@AM6PR0502MB3861.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(346002)(376002)(366004)(39840400004)(396003)(136003)(508600001)(52536014)(8676002)(6506007)(966005)(8936002)(7696005)(26005)(53546011)(81156014)(5660300002)(81166006)(66476007)(66946007)(71200400001)(2906002)(76116006)(186003)(66556008)(4326008)(110136005)(55016002)(107886003)(86362001)(9686003)(66446008)(64756008)(33656002)(316002);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OJLzy3FJiG0/GvVMQ+MUcy5JXy9a+6cqo5Z3wkUUIt39HXt5TsvUi76riXwJ8mWgf3H3cNpOgurl4zDsKC8xFrOdQKxeFhwFcdgnoglCyU1Vw9fkztXfCdo6YHvvfCNzi9EptOEE1XWII0/PjjCRaUVovvIpgMeCdutm72Yiw5t+t/dbcTf9JZPvAvOr8wy38aAg/ti88gkem+yFETmt1z+82qXwpj5jyxG/aIzY2XUSzdz8aQtErN42zJCUIGikJmqPP3EkoIzdklmJ7c2q/PSJtw9tyWwpMgYTTN+TMOB/0+aUZKAjqLYuM4QZGh0e3UOOLNlCyXZUvwSnup2kM47j6aSnO0FK5WUVL+CQHgRWz9OyBjPlZOe4/yQcsASierkK73vZCluf8ieL5f8Lf7XzgpXvemT2Eq6YbnzHrBtkNICa18DknNtVX2XSldYt+yVd2Sk700hCjqnXKKThKGOQ7SGglom8kCqMenena5XvGw9eFZBYR8B0rFw79fYUq+Qx64V4oVSRzkbpFb4wvw==
x-ms-exchange-antispam-messagedata: m+uoQJ4aNkLnG+E0DYaDQ2UueRp+Yuaov9MHN2AGsUCls/up51VxOIBlrd3yVhCoGFBywaxFzsq/MOkXiSP57+IDoXfUkunNcHCPU5/g1EEgdHq8+KK8vgUwOcFMEx1zBc3bXpQMO+n31zeiE4K+zw==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 1adcda0f-1866-497a-ad59-08d7da09c241
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 09:06:14.4075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 26AG63LaiKoVh8baLIbYPXaLnn6ejYdWtr0b0aZ9t/QmMimp3u5rJgCG2Ck+Os9LG0RwGoUlDNqOzzQGGdAuA12MqV+2s7b1w2xSFFZfZMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3861
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.99 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLNi1-005OrM-GF
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



-----Original Message-----
From: Xue, Ying <Ying.Xue@windriver.com> 
Sent: Monday, April 6, 2020 2:19 PM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: RE: [PATCH RFC 1/4] tipc: introduce Gap ACK blocks for broadcast link


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

Thanks, I will update the order in the struct description!

BR/Tuong


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
