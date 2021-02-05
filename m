Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F22C931035A
	for <lists+tipc-discussion@lfdr.de>; Fri,  5 Feb 2021 04:12:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l7rXd-0008Aa-Pj; Fri, 05 Feb 2021 03:12:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1l7rXY-00089w-Tn
 for tipc-discussion@lists.sourceforge.net; Fri, 05 Feb 2021 03:12:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9SiISxjsN1youWP9lWJDdLg+aJDf36ZYZE3IdD5Wrew=; b=buF0uWApR+wtfbHB/LSamRZLhA
 kJ/osETKhzb+TJxK7mOgQma+REa2MGlr94fqgNK51tq8cOuSUGrCtabTMGV0jA7MfmSiot/aodp8X
 /SSDMbfexYNHXO2xIJqDAce/+UiEXt0tv38khJhcdfKTQbfxmI6FMVSx9dSDUCDwIm/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9SiISxjsN1youWP9lWJDdLg+aJDf36ZYZE3IdD5Wrew=; b=DeAf+GyhcA9NoSw3Xh8Pn6GeCV
 rVNeUBcpyfy7ybXVklHiWXcjFOcMlKcAomiU7ZaR6PKPz2J/KSrkJttSSu+ShhQiSqrPQFQksXeVk
 2WR0pLFrYLdonN5nscgLAOfmE7/Lmz2shdrA2rvfJ9n4hRFriRNN1CCiDHDgCP259s4g=;
Received: from mail-db8eur05on2102.outbound.protection.outlook.com
 ([40.107.20.102] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l7rXD-0006Qq-1w
 for tipc-discussion@lists.sourceforge.net; Fri, 05 Feb 2021 03:12:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aX4ruqq6OxZAK+oZMFaKXjToAnO2Ia5vRx/V4srZSpRQVzE/n9dN9wzKXL3tTCr1wIiUbnt7r4m739aTv65M+D5C6SQsAb75KcQVhZ24uf4GEyHfBeu/b1lN0bAwHl8mJKhmykYzabloQ+0tC+hTZao7GOmYl0U2yWoiQFOSc7YmcZA//w0ppMp971sX6Xa4OrhW88ig84+CVnNdMXJ9ZtkRZ5Vslxc6yw2DaKOv+276OSObsNzeHNNx33msIkzGY7E1AxEO6Jnk5s+xsBfMCaUk4Y9kXhhTK1KLowPsIw1L2geTdPeoDVw3ix2LwBcttUo/8kbD801RJPcEAC2rKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9SiISxjsN1youWP9lWJDdLg+aJDf36ZYZE3IdD5Wrew=;
 b=ns9V58xHoOuuwBhcz7rbGSDdQ3QI/Lhr/7QmCbdlyiW4+boNZ6x3Zo8Zv88fUOQGrrn2QROHffWFOTC5V8uUWJSK2tpdLxwH/o6GafO94evq1LTWn+me9ISKIaRcZV0cKEvbS9tOhbPjBo7rK5fpGLOHwdK9FUpwg4bEOFbQFi+We6IPmc8xTW1zSGLNRQzPnVAj2PGrreCKNIb4fsQVwHh3nLhG5qg8FHGyT7jihg6vUEI4bAz5Es28itnMOJUpLHkwBaqPvSKOlUuk1RftI/idj7kFrN3udCqcvE4hP09j9WjgNjKQ9/CU8ksVx9sBWfrIqoP3RfhXPZFb+Rdg7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9SiISxjsN1youWP9lWJDdLg+aJDf36ZYZE3IdD5Wrew=;
 b=IauG0K9D8uwKJqMgJZFJv3YeS4hKWJ4MvlxhRGSbdSXKaJALWi263ZmKvLjyNKV/LfOAQReJmFehA2Gpo50z/jcSzJ6Aa9TtgUrbPiZEtqjxrvaebOSJdUypi9JhfHcA7J7xmTLpYzPfXW9Ujw0nQ/zs6PuVJyGTFpiPQPc3CUA=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB6PR0501MB2359.eurprd05.prod.outlook.com (2603:10a6:4:4d::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3805.22; Fri, 5 Feb 2021 03:11:40 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056%6]) with mapi id 15.20.3825.020; Fri, 5 Feb 2021
 03:11:39 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 12/16] tipc: simplify signature of
 tipc_service_find_range()
Thread-Index: AQHWzZMNG64mbst3C0KbHkMZK1EbZqpJPcWw
Date: Fri, 5 Feb 2021 03:11:39 +0000
Message-ID: <DB7PR05MB43153723F1D246A7E662243688B29@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-13-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-13-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c515ac8-db4a-47e4-02fb-08d8c983c1a4
x-ms-traffictypediagnostic: DB6PR0501MB2359:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0501MB235973B98A467FECED59756488B29@DB6PR0501MB2359.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:747;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tSMEqI1Qh4Txkc/hd30qlIblDmG4+HOmpCyRa2yn3CeMV6p/AYhK4Rlmg9Yy/jurzgDlScphPpsyZ+DpFiFdGkCOszhdmMhluB7hPzG1OYu7FamadUcwTcRsLnoTMak7Nfsl66mOpsaaglx7UBX0xT+Ju+xrYiXz7lqM4XDopBMxM/p//P10PISbrUNRaoJ52NTY2BL+V46XPAWD/dVtusrF4eGxGHmrFy+b8X1UDHWWFV13z5sjC0TEjL0UC0/GBNjRlPuhrFhNpPB+Qo36DZMFhtq8EhWxAnGvyh7TQSjuEQbMs1Q660LdVqv2i9Q8dVwOr2X97frPQIXM3KyM3uLzg2fWGKYOjlBG0vGk2c+QplJ/H3DFDVROTsKhj2YHLvFoi3j4okMJv/J58eH7hHP3mriz//dbij0tyrXRcKg1GGVANxrBhe7lAV7zsp/coN3NabDKhxUdbqg1h8qNW5hJTTGW2UZcUnqYKiDb6gRsN7li+J33u/Goq6Js0RLplT0VnNgEUfFn4wD0H0zq4Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(136003)(396003)(39840400004)(71200400001)(6506007)(53546011)(83380400001)(4326008)(2906002)(8936002)(86362001)(76116006)(7696005)(186003)(33656002)(9686003)(5660300002)(66556008)(52536014)(66946007)(8676002)(110136005)(478600001)(316002)(54906003)(66446008)(64756008)(55016002)(66476007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?UBfFFNH2qT6KRgCg7/JpUzCKJ5cyvBcM3ZazXFKIYhNSAP4YICGFzJB2N4fC?=
 =?us-ascii?Q?b/i7NcXk955tfT0P0rhAU+LfZSuer6qPJ8AfaDXsgiPnrHT2BauNLP0S8E6A?=
 =?us-ascii?Q?0QuGSChEldK2xe2U7s/SqGcJ37aqtsqgr6oi47B/NYG6cQqgJUaslnaFgDYX?=
 =?us-ascii?Q?Wn9ONtFgl5QA7fjBSuDvgrW6vnqxwr5I74v5+T4hobPlTGetkP1zG8X5idMn?=
 =?us-ascii?Q?vorvByesAKhR2sfZFPMDEZppoWbniQcYn9MilQ51G86E87DB59lBT+K8U6mY?=
 =?us-ascii?Q?BuTX9gJfP5VccUp7XsI2+2VGhNMJin2Mzow09spNK6cQEcIzFzQYG2cGXoJ3?=
 =?us-ascii?Q?KoyF51lBqpJ1O1CnoFDCWsp7KEYwyxUda9UtGyB8Stin8RDjlvvdH1IYUQ6+?=
 =?us-ascii?Q?uwTec3oh69WITinRwOc+lQpyCfopDmG0Xy6ocVPX/SQqpuCp6osraEOUwvLp?=
 =?us-ascii?Q?7iCzUWxT0AfjcKeZRrmwtN+B9NTm+oPwdPZ5lAKnFUJIL/6unHi5BGVH5tTT?=
 =?us-ascii?Q?OxkVzBCg41K68PUY4Rt5zu57DwrHZIaPdAIj7eU6/zSag75KhGattlQDF4u8?=
 =?us-ascii?Q?10Y9AgzeuMCeC+pyZTBi1djjYlh6kTHm7IpipW9ZBjMxtoip3OdWp0u/OlOJ?=
 =?us-ascii?Q?Zo95Qskmw566SzFf42PYDhCY9faqLkBi00tySgpuKV1ziGw6uQydszKnpYMB?=
 =?us-ascii?Q?WxXKir5Xpt9w17jOnwiysXtO8A+0Q1MKgBd2E1wvI+JuDcLyDPgTlMKFJdx5?=
 =?us-ascii?Q?+G8lWMJeOBrkLr9+Ttgg29hSRaKzAKMd/UOGcJJ0s+LdfLmFoFGa9nK7gjb2?=
 =?us-ascii?Q?NEK9gtjkVpo0MqDC6OmR8E06VL1k4GhuMp2ql8cRDHlXxajdTL1e1OWlCs11?=
 =?us-ascii?Q?ll1F0E54KX2I5OS3gDnlf5W0h+rhgRpc/OgDneYiKQDaFKNkLiQpAckFp9jl?=
 =?us-ascii?Q?FNnNhohKKlvCh/8TOLcKZ4C9uLm59g7Etqc8uCBOGeYwI5lHwXfXiyFkYqWU?=
 =?us-ascii?Q?OD8xBB8lFLyJdfIfJnU4o1r04Hb9agrJ+GZg4c9e+zzFVEPupM2GN24PiRZe?=
 =?us-ascii?Q?qZGML8EPY+p2rwBb9AZE36bFMVZqv/Z7sGhqZDtxZ2o5xyJsrU65OQFjPP2h?=
 =?us-ascii?Q?0zCBdr4q3tZL4bwCtf9fhJhCPM3r6STDsy9ngSjOHhwfHNX7hvnRMS7ysg/I?=
 =?us-ascii?Q?Ca4qVGxUKEizosmabxQnBVAQP0SoXSd4/vqNCP9JWzKnP5fmF8vH0EloT6HR?=
 =?us-ascii?Q?01jDBUmmJfcf4V9LS4lC3VM7gd1atN8Wc4ekqI/KvMbM6VjMElVqeQULm+XF?=
 =?us-ascii?Q?y+j7JHNPQ3llr16l3g1J4cNQ?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c515ac8-db4a-47e4-02fb-08d8c983c1a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2021 03:11:39.8835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 07GxxO1fpyDVCPX4Cr/kOGpgHnr304ytyfhCjk/Zc7QQQBnsF1mrtfdwlZziIIu5ZMcV2EKwrgyk8nLtzT3EQ/8HMrhH+1bGAVJRoiMrzHU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2359
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.102 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.102 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l7rXD-0006Qq-1w
Subject: Re: [tipc-discussion] [net-next 12/16] tipc: simplify signature of
 tipc_service_find_range()
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
Cc: "xinl@redhat.com" <xinl@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

Just a minor comment for this patch.

Best regards,
Tung Nguyen

-----Original Message-----
From: jmaloy@redhat.com <jmaloy@redhat.com> 
Sent: Wednesday, December 9, 2020 1:50 AM
To: tipc-discussion@lists.sourceforge.net
Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; xinl@redhat.com; ying.xue@windriver.com; parthasarathy.bhuvaragan@gmail.com
Subject: [net-next 12/16] tipc: simplify signature of tipc_service_find_range()

From: Jon Maloy <jmaloy@redhat.com>

We simplify the signatures of the functions tipc_service_create_range()
and tipc_service_finc_range().
[Tung]: Wrong function name, tipc_service_finc_range / tipc_service_find_range

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 7f2fb446233e..57abed74d0d9 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -276,13 +276,13 @@ static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
 /*  tipc_service_find_range - find service range matching publication parameters
  */
 static struct service_range *tipc_service_find_range(struct tipc_service *sc,
-						     u32 lower, u32 upper)
+						     struct tipc_uaddr *ua)
 {
 	struct service_range *sr;
 
-	service_range_foreach_match(sr, sc, lower, upper) {
+	service_range_foreach_match(sr, sc, ua->sr.lower, ua->sr.upper) {
 		/* Look for exact match */
-		if (sr->lower == lower && sr->upper == upper)
+		if (sr->lower == ua->sr.lower && sr->upper == ua->sr.upper)
 			return sr;
 	}
 
@@ -290,10 +290,12 @@ static struct service_range *tipc_service_find_range(struct tipc_service *sc,
 }
 
 static struct service_range *tipc_service_create_range(struct tipc_service *sc,
-						       u32 lower, u32 upper)
+						       struct publication *p)
 {
 	struct rb_node **n, *parent = NULL;
 	struct service_range *sr;
+	u32 lower = p->sr.lower;
+	u32 upper = p->sr.upper;
 
 	n = &sc->ranges.rb_node;
 	while (*n) {
@@ -331,7 +333,7 @@ static bool tipc_service_insert_publ(struct net *net,
 	u32 node = p->sk.node;
 	bool first = false;
 
-	sr = tipc_service_create_range(sc, p->sr.lower, p->sr.upper);
+	sr = tipc_service_create_range(sc, p);
 	if (!sr)
 		goto  err;
 
@@ -515,7 +517,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 		return NULL;
 
 	spin_lock_bh(&sc->lock);
-	sr = tipc_service_find_range(sc, ua->sr.lower, ua->sr.upper);
+	sr = tipc_service_find_range(sc, ua);
 	if (!sr)
 		goto exit;
 	p = tipc_service_remove_publ(sr, ua, sk, key);
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
