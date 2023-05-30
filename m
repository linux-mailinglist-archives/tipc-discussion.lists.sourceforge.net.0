Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E327A715558
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 May 2023 08:06:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1q3sUq-0005fI-3n;
	Tue, 30 May 2023 06:06:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1q3sUn-0005fB-9T
 for tipc-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 06:06:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gCtyFudqny+U2XrsJQfZyig110X6Ax3OBve2HZ7Sxnk=; b=giaz2Aiw+75Icr6HEocXHuuv6r
 SK6o/ZuSu9cZ26g9XGDnDxWYl2mwJ8gW2+8duyWeSIy+YAVlyEdH7tfW4Dajkf/mIbJ+6qAtl12Sm
 q1Fd8yPuqnsGbwNd9K6jAzlCmQzzWeUlAnstR8jAeC2EcJ1p46mhpwT7q9I1p8BDSy2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gCtyFudqny+U2XrsJQfZyig110X6Ax3OBve2HZ7Sxnk=; b=OKhRt0tc46UWCbuW3jKHwxExF2
 lSE7n2CokXCKpu94wcjn0qOq4VH8waJo+W7Qw2unaM50YWUVH4MULc5T20fld98ZTJunOrOcf2GKG
 OvUiNEPAqVr1SxlQZS3qjytuOyHCZAQMsuNr/dLBAzAc0qfLsDkuFueIGUZHQ6OG9ya8=;
Received: from mail-dbaeur03on2092.outbound.protection.outlook.com
 ([40.107.104.92] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3sUl-00032J-II for tipc-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 06:06:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KMhn+WENTWDNDTa0Mba52yS8L9b43N/Xvv4ry57lOpJLEZDx60xRQEhWOkOS+oJ6QfnRrdm010zEpNWC5aNw6gd6RGmRwFXRzuyfIrkKw1Da2tEQuZqRSjZ0DEiOuC47Syyg9JAmWMIjDteum+qa1RvIRj6REqCLp2FL96qkI+PKECAJCh+fEg/2xthc1AOb5/BCO2QjDE0F51earhNXg5oNNLVscgWH64KFLk9frqrBGZyN1maeZeqcinSvKH5QxDQrH5jEvofOn3fiMayPnQmT4dCIbXm5EEd0Y+S5+nPAXGzoxzeFxniMdyDDXGCDFTFqd5qEI3qeclKA7nGX/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gCtyFudqny+U2XrsJQfZyig110X6Ax3OBve2HZ7Sxnk=;
 b=k/bJzWtQ7pSQzE3aHTvj1QhwJ6iI6QUBOQ80QYa3D6np3u8pEtJyPM0rh/ojDN/A7KFJY8KJE/hajNSUM4ltJF07F5AiraHyEBVxExufaPywdlIVH2dyEVUPTbasbFIs/Nyk9xQXunLk7pF9WNMLJh8UZJtb9HB/msKq4XhtXyuW2tC2RH8EP0Jmm2ds4dWBYy92+JCX/kuVlJyY1xceWrHhqlGf+Jx5VpoccGG6E1/qn7si0++kuCVrMjX4E8AayxyHluJafiwTl3QxATjVasNdtxOw5zABv6x8GfujaqAzAuvsX6oFJ0GT1bN6B2wDQtZrMGsXDP/55xjIt6fecQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gCtyFudqny+U2XrsJQfZyig110X6Ax3OBve2HZ7Sxnk=;
 b=J769JKDEoYPNT8ZhZGrXtHoDg7WLhoZrPmDuiz3Y9StdSzbILWDE85PrsAnEQXATGAiUADGYlPy64zIowGxtQMx9KLWrD7pinGOy1AtLabC3+pJBXn9EW+zsEYvJnuroOzTNTvJvWp2lIKzjHe6IwIuf3D59YQAvBEOlh+0IsmI=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by PAXPR05MB8635.eurprd05.prod.outlook.com (2603:10a6:102:1da::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 06:06:01 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 06:06:01 +0000
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH net-next] tipc: delete tipc_mtu_bad from tipc_udp_enable
Thread-Index: AQHZkj0qlhCqU9hAb0Kp2y+tQWp6Z69yVNhQ
Date: Tue, 30 May 2023 06:06:01 +0000
Message-ID: <DB9PR05MB9078787B5CC615C926F7FCCD884B9@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <282f1f5cc40e6cad385aa1c60569e6c5b70e2fb3.1685371933.git.lucien.xin@gmail.com>
In-Reply-To: <282f1f5cc40e6cad385aa1c60569e6c5b70e2fb3.1685371933.git.lucien.xin@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|PAXPR05MB8635:EE_
x-ms-office365-filtering-correlation-id: aaa7e3d2-4872-4e70-de6e-08db60d3f1a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VPYQfyHY8LrGL3YxL8/WrH4z0udxzUaEls/DTKQxpl9Xk0DwJvmjt3GcOdVopv7ffjWwvsST2Qf40PW6ZDnYOuK6MtfolPTyHoggzCrZhZKtEnJEq4mTIbBQObaPbF9Ycm0Mf+C2PZJuify6MbHOTN4xV3frJKN/0oYWVfSd3J6Z7EVr3DQij3hOLGj3KI2Y80FihCZYAuLEEfuR8chWRjfgKFEs6nb5r8Bjvj/Fw8Fj9/XBNFW4buurecYtQ9TcGivbAyDACa2TKDgMD1PBQddJ8/L3KESqrME3bPgcSz8KaquXopkliIxb2svw1eMsg+bFKSZXE3igYk7Sqybfh3vQPa8fuqJKBes03yRkMfxZd6SyPGsgFMC3wiYBGYkyJYf8qVzpc57hsqQ31T+n+NOKO1sBMZPZPraRgN/wWAHbJ6bmoPN/sLzjUdAX0OnS4JK6yFFw7RnTXCwFiCUiQZD3KgXTLGF4FPK91/r+coxIBFsIsvU0o9bOzjp/kX5F7FBxH927ITsCchrtdE7aAJeEN3b1BpMzm+tAgR2paqI0JzEYyGif+QLYJoku+8ItnevGaoCHieuRgafyc2epLlXIrYwHapARYNcJeht9jmE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39840400004)(366004)(346002)(396003)(136003)(451199021)(186003)(6506007)(9686003)(2906002)(55016003)(38070700005)(83380400001)(4326008)(316002)(71200400001)(76116006)(64756008)(66446008)(66476007)(66946007)(66556008)(41300700001)(7696005)(110136005)(478600001)(38100700002)(54906003)(122000001)(33656002)(8936002)(8676002)(5660300002)(86362001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?piDnThBCVEdK72VfEq/DR3z71vTtpVnH3Oe8Vxb7G8LyhM2JUXlsDkmwhWMI?=
 =?us-ascii?Q?yB3Jc2LyTm3EZg35LAyY9WB5V8tOfs60IQu82KJXShwwF3URPnaIwiMfEjt4?=
 =?us-ascii?Q?x6LsbA+Q1/EkcazTpx+YClIErJyyKH5BbDAmcwLx5PnGee/F2W16W1qZj7gu?=
 =?us-ascii?Q?2wVC9N9Yb6GEhjj7M7faJYEefyC3ymNmpTRnzC/MSTKpwA2YT7IN1T1OabtI?=
 =?us-ascii?Q?7vitjJnmnzhe2FfuTuAzwrtH/Krm6g2BX35H7nEAYGGOsNcF38cKP8ONXwTH?=
 =?us-ascii?Q?aY+edOjmU+UHvpMs7S3EajfOtqEv1wLIlNNzEvWuJlm3DnDwQIKyXX5DqN8g?=
 =?us-ascii?Q?0M9Oj9/y3luMHef/cKh38UpKwMB3RaxKyg4v3FbdxxOydGZKT8em+F3C4zlc?=
 =?us-ascii?Q?wXvx3Gd0X6IoObtSPJGnvVFEm3p7vA6LType7j1W1GJi+ikvQgG7YFLL+3Fy?=
 =?us-ascii?Q?P+dDr5wOrZfP5vfL/uOHfHeDV7P2eXpWRgcPSx8lfOkFNJON1rDBwJ/bhFpP?=
 =?us-ascii?Q?gi0Pth4JfI7nS1NUZidu70s77GI8gy3feL1G1q9LkhJFJA8KyhgDI3DsaHZA?=
 =?us-ascii?Q?in7dwtWNfPqhJQKsw/n7DIv0XOJGWiRL/9WOoOGGdfr9mY+j7RmLbLaznZDv?=
 =?us-ascii?Q?nI+X3xGAiD5ErdBV71agGP1YEulVomMw5TETTCzzyY1g3A5Gn47UxJ8rplna?=
 =?us-ascii?Q?LOD+TN1MF0ILzdIyrq4LebPc853NYqfQIQscJpr65u4f7D6is+XjovGvChJw?=
 =?us-ascii?Q?FkZhuoPT2ISfr0p0X7aj55sXUtoE5hWX65ZQBMlmfapAUntus4ImnVUHvn78?=
 =?us-ascii?Q?GfCRPQYH7RXfczWzHfKsBWSoHYGdRHJbjLDXIDdjfmGiyRxd7psHN5j0de7q?=
 =?us-ascii?Q?SXRpnmC4RWN9Yz8M6wzbkslsa4oyg3qrsdJZYuNAR8F6iRXt0lYFHnDojN0v?=
 =?us-ascii?Q?7/j8UZxduirfo+v5ghLVtStmEz63HeYtkvymmf+cgj7iCkXYuCNtTXhMEomf?=
 =?us-ascii?Q?YQPQ5RDpTnTrPU9J7Z4jMpO7oOXwyNpOMWleUa1bAte7FuygyFEXV+axNh78?=
 =?us-ascii?Q?VyYVl7RtduqxYp2hgYJNDoOc2Keq5BncJjJm4FrOmRwaNxZCQ7X3VxhguBv6?=
 =?us-ascii?Q?0fPbjGLzlsam9XvQF+UlgV/B9YDGjaaQT+nUCcjuJJIyx1Qib2JgD+KD4BTD?=
 =?us-ascii?Q?qKF5Xpnjrl0NtvvE9fDHUhshkoF7F2EXPaNYM7Q8PN4RtIFamItkQi3xaCf+?=
 =?us-ascii?Q?7hlqKldCDw9YMBar9YKaAbmhUzn7tNoD+hY2Y+dzT6w6gfVeCNF+g59h3fvm?=
 =?us-ascii?Q?Kru0yVkbsP8RsJ67pI2Ueyah3GncSe66GoTApEfaeTN/A4UQ6hpMf37wBsMD?=
 =?us-ascii?Q?OW3sSzNoBrsz0g2gxMScOPSejCFxua0kvryYts1ahf4tX3XR/af5ceZxFrBZ?=
 =?us-ascii?Q?91JGOHgNVVAcJk/f8ywox+bR/DN+B2MVdeQbK3y8AxuJeN/YE9h5ldgUWd94?=
 =?us-ascii?Q?n7KhzqvMupL/OKKq3NOvq17qLzAKvg2HSR/sSWwvweMg5nlOaGhAza0i9gWQ?=
 =?us-ascii?Q?wzAnAo+Df3W+uGmaHLg=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaa7e3d2-4872-4e70-de6e-08db60d3f1a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 06:06:01.1527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t2L9lZYsYV7TKCivVq8vSR9Cya1KgaxiR7tp9beUKs0KazXit61iGOayH3oQihs9B6Kc7B50tbYrtdpkWt2k5FEh7oQTaaVdJMtKLVGsbLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR05MB8635
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  >Subject: [PATCH net-next] tipc: delete tipc_mtu_bad from
 tipc_udp_enable > >Since commit a4dfa72d0acd ("tipc: set default MTU for UDP
 media"), it's >been no longer using dev->mtu for b->mtu, and the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.104.92 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.104.92 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q3sUl-00032J-II
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: delete tipc_mtu_bad
 from tipc_udp_enable
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Cc: "kuba@kernel.org" <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

>Subject: [PATCH net-next] tipc: delete tipc_mtu_bad from tipc_udp_enable
>
>Since commit a4dfa72d0acd ("tipc: set default MTU for UDP media"), it's
>been no longer using dev->mtu for b->mtu, and the issue described in
>commit 3de81b758853 ("tipc: check minimum bearer MTU") doesn't exist
>in UDP bearer any more.
>
>Besides, dev->mtu can still be changed to a too small mtu after the UDP
>bearer is created even with tipc_mtu_bad() check in tipc_udp_enable().
>Note that NETDEV_CHANGEMTU event processing in tipc_l2_device_event()
>doesn't really work for UDP bearer.
>
>So this patch deletes the unnecessary tipc_mtu_bad from tipc_udp_enable.
>
>Signed-off-by: Xin Long <lucien.xin@gmail.com>
>---
> net/tipc/bearer.c    | 4 ++--
> net/tipc/bearer.h    | 4 ++--
> net/tipc/udp_media.c | 4 ----
> 3 files changed, 4 insertions(+), 8 deletions(-)
>
>diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
>index 53881406e200..114140c49108 100644
>--- a/net/tipc/bearer.c
>+++ b/net/tipc/bearer.c
>@@ -431,7 +431,7 @@ int tipc_enable_l2_media(struct net *net, struct tipc_bearer *b,
> 	dev = dev_get_by_name(net, dev_name);
> 	if (!dev)
> 		return -ENODEV;
>-	if (tipc_mtu_bad(dev, 0)) {
>+	if (tipc_mtu_bad(dev)) {
> 		dev_put(dev);
> 		return -EINVAL;
> 	}
>@@ -708,7 +708,7 @@ static int tipc_l2_device_event(struct notifier_block *nb, unsigned long evt,
> 		test_and_set_bit_lock(0, &b->up);
> 		break;
> 	case NETDEV_CHANGEMTU:
>-		if (tipc_mtu_bad(dev, 0)) {
>+		if (tipc_mtu_bad(dev)) {
> 			bearer_disable(net, b);
> 			break;
> 		}
>diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
>index bd0cc5c287ef..1ee60649bd17 100644
>--- a/net/tipc/bearer.h
>+++ b/net/tipc/bearer.h
>@@ -257,9 +257,9 @@ static inline void tipc_loopback_trace(struct net *net,
> }
>
> /* check if device MTU is too low for tipc headers */
>-static inline bool tipc_mtu_bad(struct net_device *dev, unsigned int reserve)
>+static inline bool tipc_mtu_bad(struct net_device *dev)
> {
>-	if (dev->mtu >= TIPC_MIN_BEARER_MTU + reserve)
>+	if (dev->mtu >= TIPC_MIN_BEARER_MTU)
> 		return false;
> 	netdev_warn(dev, "MTU too low for tipc bearer\n");
> 	return true;
>diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
>index 0a85244fd618..926232557e77 100644
>--- a/net/tipc/udp_media.c
>+++ b/net/tipc/udp_media.c
>@@ -739,10 +739,6 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
> 		udp_conf.use_udp_checksums = false;
> 		ub->ifindex = dev->ifindex;
> 		b->encap_hlen = sizeof(struct iphdr) + sizeof(struct udphdr);
>-		if (tipc_mtu_bad(dev, b->encap_hlen)) {
>-			err = -EINVAL;
>-			goto err;
>-		}
> 		b->mtu = b->media->mtu;
> #if IS_ENABLED(CONFIG_IPV6)
> 	} else if (local.proto == htons(ETH_P_IPV6)) {
>--
>2.39.1
Reviewed-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
