Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28414702D16
	for <lists+tipc-discussion@lfdr.de>; Mon, 15 May 2023 14:50:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pyXeY-0006fd-PC;
	Mon, 15 May 2023 12:50:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1pyXeW-0006fW-1z
 for tipc-discussion@lists.sourceforge.net;
 Mon, 15 May 2023 12:50:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ikdju38KKZcBuwrElli1cSPJyoQl6WDjfSYhjq2F3sM=; b=MiKu1OiuDae/9yteR/IZeNFDYH
 N7wT84sr0/DVnUF9VweZI64sOQCY7av0/ec4wy0dHx4mCFNFwxzMeKumiD7baiz8Ous7eA56QVGAW
 VDFMGqJtlThquSN3s0+FcO218+0oGBW2UrA24urUq6T4is9iMxzzKs2VmPPomm45d/18=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ikdju38KKZcBuwrElli1cSPJyoQl6WDjfSYhjq2F3sM=; b=Woj8p4XjpJSWrZwKj52JCKMgNK
 pEXCPXfV70DTODXt/jGGcWiJp6gdz2s8W9bvK4r3psn0fDHGPFCcFe51PuupEjjAfTvugo6kXQK4M
 fR2wftX1mfNQD/S5x4zorZeel0bTBz4CXCiEOGNZ2qcKIBFmJlm1vInoqQw81BjrabDY=;
Received: from mail-db8eur05on2129.outbound.protection.outlook.com
 ([40.107.20.129] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pyXeM-0003Zc-FM for tipc-discussion@lists.sourceforge.net;
 Mon, 15 May 2023 12:50:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ch8i//s5Ez9jOb0VspYVIphGpcNWvulF9GEzfkbTC0/6HVCIdZNqmg9o/L4pC8SGXeNM08km8qLgW2jwdW2u014C7DatlQ11F228vR5d6dTxZYiq3to8oEiTCMuxMsOh0st7LyKU8zdbz/OaJjpNWhny3nAXM4s41VsN9LqSY9ksvWW3f+3rjrPBd5u9CVsrfoM8WLu2QKWUnJDa6fOCUm6f+07/b4Qjuy17DRR1Mc4/9dAka0iG2Llz0ib1eifqKBuJRCp7IQ12eWAfzsyg2nbXcV4LZw0oEkuDYm699aaGLAjQQMQLJ5lwiKJJpIewgZTWiETo+IW6jQarPtM+AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ikdju38KKZcBuwrElli1cSPJyoQl6WDjfSYhjq2F3sM=;
 b=juEp3TU5yX5p5cu6W0ad9LqN3ojeRZ90pQcAJJ2CJOoYgG4/o4NPjIZO1rWJXtGZCL1H68Zh5PNDmGu8sYvXReR4EUjCjP5fSsPD+RZGJ9P5LZElqDyTv4Oa4GXMBP/oFwbouoceQ45UTf5mtrRhXV1hFzKOiY5dLHgNE1aTCtw9h/vcxpwWfrLBDJDG+UEzWQxMrzL5zujt4yLJTadcIEUa2U7ZqjRLUPQOONRSFDPV/gxObGNKYKSdRC6uAS6OXVs5Defs7Oi8q5YHovbJHIeJr9kNes4pxtlBJ35S9pB2YNh9+lSqgy3L1aUonufhs7PtirQc87FeGqa7xmN6rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ikdju38KKZcBuwrElli1cSPJyoQl6WDjfSYhjq2F3sM=;
 b=gbYM3cwY9PhrKfR8UtY99+LcqM51CYzVR40hePYgan+3CX9jxVOYh1/1EpkDtNorjnihwfhU1AQQP4pMjk8OiWG/RCuXlTZoistz0AyUAdb/aZPpTw3JqMSNkhIUeDBKFLNTVKLttPHV7vaZV2q+t+5n6x2xfjBSx5XsBD4ymQXzdEcDCWQveRLJAiaX6wttP3MAvdtpWtsF0OdALWJVlIc530gBAY024+DaZ97fTU5U822ixod/RzcCIOxXGiND5ypgmS3UxH0RQwdB3ONYLK16YQoKXcB/tE6MC3wZiojdgz8yLL+9kC+u4yHKQGFRarSkK5UR9gWEyIUg4z7rjA==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by PA4PR08MB5903.eurprd08.prod.outlook.com (2603:10a6:102:e9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 12:35:13 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664%5]) with mapi id 15.20.6387.029; Mon, 15 May 2023
 12:35:13 +0000
To: prakash bisht <ps13.bisht@gmail.com>, Tung Quang Nguyen
 <tung.q.nguyen@dektech.com.au>
Thread-Topic: TIPC socket ( SOCK_SEQPACKET) cleanup issue
Thread-Index: AQHZhxotvJqg1AVtxk+kF9Wb8rO9Xa9bRCFn
Date: Mon, 15 May 2023 12:35:13 +0000
Message-ID: <AS8PR08MB7767CB51EAA3EAC505B4411B85789@AS8PR08MB7767.eurprd08.prod.outlook.com>
References: <CACB1WsRUCkb6ZfNZ1fCQ=q_M6Zo0t-MuXouoxKWwgReRNCn9QQ@mail.gmail.com>
 <CACB1WsQswDHuvQrpHu_F=G6SM7MAZJ1RU=XAkOBgnw95KquM9g@mail.gmail.com>
 <DB9PR05MB9078720FB4FED1290AE929FC889D9@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <CACB1WsQ03cxhCDBLUCKp4gXEnqSYLG-NbVST02PQCLgx_a-azA@mail.gmail.com>
 <CACB1WsQ78_0R+2-EhocereqipRse7i6D87CJEYjMnrwJCLKUfQ@mail.gmail.com>
 <DB9PR05MB9078847C3E57470C1F3C31F988789@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB9078847C3E57470C1F3C31F988789@DB9PR05MB9078.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2023-05-15T12:35:12.543Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|PA4PR08MB5903:EE_
x-ms-office365-filtering-correlation-id: 612de565-21c4-40ea-486e-08db5540d4a1
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RMn9irXRf88dch4l8TxjduGkGZoFoYkmvbRfMYnr22lBt23QEpHvDgQoB7xePF5GKIfuYSSpM8Cf+XR6VRld40eqslKnJTib4KW/LUGhg0mF9RjjI0Alpw91qb9aF29+9nUSTi/3EvV9ahj6+FITujBfom1D9OduGC1nDd2VJzVvoPpFr2IJFqJoLB514LfRSPjWCEzRQpd60wGbW/tNsKpYKVAg1pY17dJEmJ3ztC9h585pTnZOWJ8RYCNDOWiI2wgFXrFxbO4fCBH9SP+atBib1CDuLhWNSIBrlTAQpcgawx5GxX1o+Uix+WeJtnVssoOvvb0i4aITOxqKlm8Q+dVsDx2ce6ML1cxElTrx/yedYftGa49SK82QvO3dmRKaftk2vjsll5ELE9OsWQOyR+RX45odKUxD6//6rO84p/GBtEzmHMnq3sGvkbrWAt+aqe//dbyXYPIovAgnkSiEYC28tGkV8yBH4WT4Cb3fOC0UX8MMWvmb63wFw3DcCN88LMyUWMLdyrodXb+2KmTvSQS693h0BDxoCSV3/6kxGcC9gQYoiAkr/j3gsMgw7OXPNV9Yg7sl9Nq6X4DxtYEVozch0773N5ii3zxNndOKArY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199021)(45080400002)(64756008)(66446008)(4326008)(8936002)(71200400001)(8676002)(66476007)(82960400001)(66556008)(316002)(76116006)(41300700001)(478600001)(66946007)(122000001)(55016003)(54906003)(110136005)(91956017)(38100700002)(186003)(9686003)(38070700005)(53546011)(6506007)(26005)(2906002)(83380400001)(33656002)(40140700001)(19627405001)(86362001)(966005)(166002)(7696005)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?1r9HAP033RJYI0dElHXJVy4GS6/Jebx1xOUqi45O1qWMRxIbcoa2Dt0V?=
 =?Windows-1252?Q?fuNRbHM+fpL3hrLCr/Xjnr0/ehGmGkWX4SOH6HsPZYb35d2OboJicWp6?=
 =?Windows-1252?Q?DJrNF4Y44aLfQQ8dLhbRKTngmeZppOl93KSIXzgpYl6nu+2nTlCkP/F3?=
 =?Windows-1252?Q?qerILhksNj0ibUMtfbziwlD865s2hvIgaRIKRVgnOB9xJh9U2VNcFnKG?=
 =?Windows-1252?Q?NOHA3JLt+MoJTN5+eMY+7iVcQSnaEniOsGcIwP7IuZWySplI0y8SratP?=
 =?Windows-1252?Q?HjGlw98VtW25WQ6e+IornHEljoh8Ws8tn+CYVoVNtjKqWqbLMns1K+u4?=
 =?Windows-1252?Q?aq6jixryrCpz69fmapiHzRJ48A6/7JsVl9z9oAldFnfoMHBrK9XzK30P?=
 =?Windows-1252?Q?neDDmTCVZiarlrtsQn9jBxj08Wi0airKodc6+dtG5E0ZlA9UjyefrJB7?=
 =?Windows-1252?Q?Tfbp047eQ2qskGRHDtK86YO5FXLz8QzmW9RQNe2cicpWNnbPhfS/A72+?=
 =?Windows-1252?Q?cgnd2SQjNGaT/WueyJMfSv3wvKTYZE2J98z/UT9aYvWWE8ymQunFrqze?=
 =?Windows-1252?Q?IdWSTJCVEgOdk5cCBOMflzeZ6OH+IEx3qmwbJOMQWiX/L60XABB1RcQv?=
 =?Windows-1252?Q?ap6/A/yDtAWI6n62KlQmmxeB0jWUIpJuSp0Eegtrom5qL9XpF232wQqC?=
 =?Windows-1252?Q?9vIo4HWej0PAF+nI+JWBEsSzlC90uXVMHKBj54fT1iVambiH9TOgzq2p?=
 =?Windows-1252?Q?zv9W+fiZcmhkqrlAvemhAoPZLbc9QDuUc5A/RELB5/2HiQZI7ItFIU4D?=
 =?Windows-1252?Q?KRv9o0oR7AbCplimgkuHZzqV+28xYLld57feAZXgk+/VZCKiuCIUBo4g?=
 =?Windows-1252?Q?68Bsat0ALIb6qERVUqOlK5tl/FHHUKwfW1FSiwvQCdLOq8ZEH2N0demM?=
 =?Windows-1252?Q?AgfappQktUZSCgBOMI9Gx3uHL4IEU+Wy5FJunzBfX+V0XJqwi0ALGKX5?=
 =?Windows-1252?Q?MNAYpkrZFa1qP+zZCyJkk9Fzv2zbhQpMlYrIeBOVj/J/h2rYKdX84ejW?=
 =?Windows-1252?Q?yWfuj34Al+KzcJKcChP16XRXIjpjL2uTkkz+y+lMHC+Xy1mys2+ATNNs?=
 =?Windows-1252?Q?SU+l1qghc0jEKZCt+d6tz8TdDeeAD3Fn09dQh1UXufv2vM8bClhF5gGe?=
 =?Windows-1252?Q?DGhbheQ+tAcw1LsymHLQvL9PDjGzRsQbXT10x4FHDgIAO6QhetfJwSjv?=
 =?Windows-1252?Q?SDz2iUxB+y3msXAE7TmvD8y5LWIpSXPNYtGtW3n6wE06kWVJKPqfba6h?=
 =?Windows-1252?Q?sFkng/ZgtK2zdeyACLYLUTS8suLx0PpnAT9eD7NTaGyywM/bxgGXsFgJ?=
 =?Windows-1252?Q?0N8clw4vJv8ZrNIQK9Ew4fLfXrQNZKaUcAefoSFGt8WJLtTgtiBEiANH?=
 =?Windows-1252?Q?EhfXJHnfnSnc1WvoRO74n6QXuVZIXF2/VmUMk5aAk8nCNwAsVjzHntvI?=
 =?Windows-1252?Q?u7u35n/+S3GgLGigTzptAHsvyEgHjH7jTM+KJXgJAsgt1Xi5Eyks0MNq?=
 =?Windows-1252?Q?ReSb9Y0vYPQG0cZ5caVoKBURnKucfTO/Wir1Zpx4cTDVnGy2o08ZSpNv?=
 =?Windows-1252?Q?QjSX52I+oVRf+EiQ9JyYcwZdledzf1skaSv3SSt10OgSDG006rHnCb7N?=
 =?Windows-1252?Q?AfEsTmt5rkyp+QyzavoXkZMWZ2aNmqsf?=
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 612de565-21c4-40ea-486e-08db5540d4a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2023 12:35:13.6528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oP7FxPp+yPmUjIIvr1U3CDQ2fC8uB12nJE5IJP1ez5IAHK1a2KfEva57nr4JjisgMymUK6DdIHiQpMum2mel79EfnBPm06421MfHMXKCKJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB5903
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If the program is forking off processes, perhaps the child
 processes aren't closing the socket file descriptor. Using fcntl() to set
 FD_CLOEXEC on the descriptor in the parent may help. Gary Duzan IT Architect
 Senior Content analysis details:   (-7.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.129 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.129 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pyXeM-0003Zc-FM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC socket ( SOCK_SEQPACKET) cleanup issue
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
From: "Duzan,
 Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Cc: Xin Long <lxin@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   If the program is forking off processes, perhaps the child processes are=
n't closing the socket file descriptor. Using fcntl() to set FD_CLOEXEC on =
the descriptor in the parent may help.


Gary Duzan

IT Architect Senior

GT.M Core Team



T:  +1.484.302.3226

E:  gary.duzan@fisglobal.com

FIS | Advancing the way the world pays, banks and invests=99


________________________________
From: Tung Quang Nguyen via tipc-discussion <tipc-discussion@lists.sourcefo=
rge.net>
Sent: Monday, May 15, 2023 6:43 AM
To: prakash bisht <ps13.bisht@gmail.com>
Cc: Xin Long <lxin@redhat.com>; tipc-discussion@lists.sourceforge.net <tipc=
-discussion@lists.sourceforge.net>
Subject: Re: [tipc-discussion] TIPC socket ( SOCK_SEQPACKET) cleanup issue

Hi Tung,
Can you please share your thoughts.
I have responded to your queries in my previous email. Please let me know i=
f you need any additional information from my end.

Thanks and regards,
Prakash
[Prakash ]  We are using iproute2 version-4.20.0-2+deb10u1 on amd64 platfor=
m. Our use case is very simple. We are creating/destroying a server socket =
based on some event using below code.
      // server socket creation
           int sd =3D socket(AF_TIPC, SOCK_SEQPACKET, 0);
      // Closing server socket
          close(sd);

      After closing the socket the file descriptor is freed but the tipc so=
cket is still present in "tipc socket list" output.
      We have multiple applications in our system which are using tipc sock=
ets. But we see this behaviour(stale tipc socket) only in one application.
      The only difference which I can notice is that this particular applic=
ation  is spawning "strace" to monitor some other application. I am not sur=
e but it looks like somehow running strace is affecting tipc socket
       cleanup.
>>> Perhaps you need to provide detailed reproduction steps like these:
1/ Output of =93tipc socket list=94 before cleanup (to determine how many s=
ockets are existing)
2/ strace command with detailed input parameters
3/ Do the cleanup
4/ Output of =93tipc socket list=94 after cleanup

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.s=
ourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&data=3D05%7C01%7Cgary.d=
uzan%40fisglobal.com%7Ce548993f9552411d1b0608db55314e07%7Ce3ff91d834c84b15a=
0b418910a6ac575%7C0%7C0%7C638197442480641340%7CUnknown%7CTWFpbGZsb3d8eyJWIj=
oiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7=
C&sdata=3D13RgGXQpTsC%2BmNp28zM6Xf442mA8Xyhr0%2BqWiiIJoXM%3D&reserved=3D0<h=
ttps://lists.sourceforge.net/lists/listinfo/tipc-discussion>
The information contained in this message is proprietary and/or confidentia=
l. If you are not the intended recipient, please: (i) delete the message an=
d all copies; (ii) do not disclose, distribute or use the message in any ma=
nner; and (iii) notify the sender immediately. In addition, please be aware=
 that any message addressed to our domain is subject to archiving and revie=
w by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
