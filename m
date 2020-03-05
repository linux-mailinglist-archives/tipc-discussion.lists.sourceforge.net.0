Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9733C17A654
	for <lists+tipc-discussion@lfdr.de>; Thu,  5 Mar 2020 14:27:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1j9qWc-0007Q0-TL; Thu, 05 Mar 2020 13:26:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1j9qWa-0007Pr-UP
 for tipc-discussion@lists.sourceforge.net; Thu, 05 Mar 2020 13:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2HEWp32UE2RdIHhbWJ60TNJIT2bYy98KvSiqdkKsa1g=; b=VXgU74lbCCwiXjcaD0yXyP0gCD
 muvLGMaoqMUSNk3Y4NkFyeZzGxF0BqXY/4Ycku8+efudJQOAGgfBBQ9idTEBjVNGp0HUGQYjME8cX
 FsEbbrY9NL7y8GxwliKGrHJCRd/v6Nob1ghnuKxC3usXq8vOitFLSK++n8PXWTP+oMAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2HEWp32UE2RdIHhbWJ60TNJIT2bYy98KvSiqdkKsa1g=; b=RWB2nGuxBRL+2eo2J6Ha5VPIg+
 mBwYZBXBSv5uBTIQRKvUedXoTKakwh/8GxivGlob5UA4C97cy7vR3vZKry7dxtsm1OOFeHMajm9WH
 khzmYuZkV58iIsPhNgAjilvXwf0maABGwj55R5G3p8xIj6nRIb4Noh6AAsyY+ESsMn+Q=;
Received: from mail-co1nam11on2047.outbound.protection.outlook.com
 ([40.107.220.47] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j9qWY-00E02b-6P
 for tipc-discussion@lists.sourceforge.net; Thu, 05 Mar 2020 13:26:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eKZ4faipqho6J4rVXaZkyFe1fjMcwQTK0ZsssgYBxJuskfpTTRHu1ZJWCxUeAogDKdinOue8a5hbb6z/tJ61fNgFwvZLDQW2L4JNYkyVcenxCJoYCqVDvDr2w4BublDvS+jFp1sjqxsOH1XA7l1qoASpOkmbbq0bBcwk+u7qEU5fjXJoxzmFdc+Vls7TpK5aDOvaHvwgCs5AhjObMBGbEqvJ6LRCYWUbR9VNtHGkcqmQpbic5sACQagbg3NKf47oEhCIdYiykHI4xG91HxmRubw+ifzXkn+YlGqJaWrOzagaB9n/8CyONt0UDvDYwR2ZrjwVkIGOrOLxMslPkThSqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2HEWp32UE2RdIHhbWJ60TNJIT2bYy98KvSiqdkKsa1g=;
 b=n0DVHQkTcK5dcE3O9OC7dCRZW/0WCZMvZS/cj194HyyBepdQKp/RdA06kcZRVqq8X/OQ7MYH6f4qPDjfco+hS4y4U+hj+O2UXlZOHqwDk6JnUQ1yF3aZB01sp/vI3CMcW3Qehl5apYHIptCON9APjnOINci08MOMWuk0FCxi++VSk4v1w2OD0cPI6PMvE35CXFLkVgJKdlYWyDU3tlNv55DrYHI1c1OXdrcdQ0DFz3sycEJLZlFacne4nTJlyRuJDKPfkOpEM6VhXlwmJ9IUtEBX8ntw7UQLrTA7p34dKkhIDA/6J557mLpzt9T19HxQ9AMj0Eod3yteS4Rfi44smg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2HEWp32UE2RdIHhbWJ60TNJIT2bYy98KvSiqdkKsa1g=;
 b=Neu5ccuATRa7lq/MxoPfNTSug31gtujHtAAQQGpz5L8t79yT0+CEaSkZJgOR9jJCzcsmFtWINSz4URTOg2FYHHP7I0YJxPYWXyPQBdbxBOg1kSD2YKXGGeDRjTfIG81V5TKaz3pUP11C78Q/g0kc6qVqCNMlu777jPLqk7AP3qE=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4037.namprd11.prod.outlook.com (2603:10b6:a03:188::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Thu, 5 Mar
 2020 12:52:17 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289%6]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 12:52:17 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Hoang Le <hoang.h.le@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "Xue, Ying" <Ying.Xue@windriver.com>
Thread-Topic: [net-next] tipc: simplify trivial boolean return
Thread-Index: AQHV6HJHeXEIt2IokkKbnoJmDGy0Pqg6CL/w
Date: Thu, 5 Mar 2020 12:52:17 +0000
Message-ID: <BY5PR11MB3894EBF643E5EA21C7DE8A9084E20@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200221044859.5391-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20200221044859.5391-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ying.Xue@windriver.com; 
x-originating-ip: [147.11.252.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3aa35b7-c3fb-4e18-af62-08d7c1040968
x-ms-traffictypediagnostic: BY5PR11MB4037:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4037DFEB0B4903B3E1BA862E84E20@BY5PR11MB4037.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(39850400004)(396003)(366004)(189003)(199004)(55016002)(81166006)(8936002)(9686003)(81156014)(4744005)(5660300002)(66946007)(33656002)(86362001)(66446008)(66556008)(66476007)(8676002)(64756008)(76116006)(71200400001)(110136005)(7696005)(186003)(52536014)(53546011)(316002)(2906002)(26005)(478600001)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4037;
 H:BY5PR11MB3894.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0aDHxb435hMHhAFXRotU20ww9PFeOehkoCHim4BoFWRYZ3l9JDECosBPf6nIDQ6zN2jOX9mybs+xVx7WDnvJyh+aYgbORhqxofnrBzTwEcaKfbnMa89t8v+2QGZR1t6h9nNvBKWw0LTouRP3WfQXRmkb8YiXyCU+lmcCRahYTaC8wh5q8olA8ICH5i52jmgnJaH8ROdOwaC8oorZlunAo8Gvztn7GaUigS9ACFQL2dwTRv7Fb6P33nxujWG2sAfGRmPEfid6kYoY8KgbpksPoRIsrdUPuoua1ec4WgE8azPn+reiU1tLel8hJtRxrHvRAH4jCjvvrwk4Z+s+/s1hpttDvwXzbq8z3/AZY6D0VeGc/TJtg4+gwcFMA48AKlw7D2NYFZuifwd3ua2f8FMwA4grNe5YSoLqAfkjLHchdD2KS7FR79g9P/p+QuB/RwDB
x-ms-exchange-antispam-messagedata: FkegRtr7fHWUQPGPwMc5/v6mUyBjz4GSMXMIU5tfOUmTh51x0dx0bAE3EUU4btCdfW8wFRY3YaN+1ZnCCVzz8k4XBXYwhZZB8RJcBmXSpiJhsPPisNIj5SagZ/Yf5xGwf6UGL0HK8jYIhW70VQyrvg==
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3aa35b7-c3fb-4e18-af62-08d7c1040968
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 12:52:17.6790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tUmhT7vVvh+CQAFyn27LIxTr3f8LiyD86FAIIz5UQM0hkAVypUZE6JnQA+6N1WHvg/uDpRALASUwALO6rX2awA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4037
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.220.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1j9qWY-00E02b-6P
Subject: Re: [tipc-discussion] [net-next] tipc: simplify trivial boolean
 return
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Ying Xue <ying.xue@windriver.com>

-----Original Message-----
From: Hoang Le [mailto:hoang.h.le@dektech.com.au] 
Sent: Friday, February 21, 2020 12:49 PM
To: jmaloy@redhat.com; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net; Xue, Ying
Subject: [net-next] tipc: simplify trivial boolean return

Checking and returning 'true' boolean is useless as it will be
returning at end of function

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/msg.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 0d515d20b056..4d0e0bdd997b 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -736,9 +736,6 @@ bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
 	msg_set_destport(msg, dport);
 	*err = TIPC_OK;
 
-	if (!skb_cloned(skb))
-		return true;
-
 	return true;
 }
 
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
