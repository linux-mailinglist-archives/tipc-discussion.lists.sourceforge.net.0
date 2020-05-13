Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8501D12C2
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 May 2020 14:33:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jYqa4-0008NM-On; Wed, 13 May 2020 12:33:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jYqa3-0008NB-4i
 for tipc-discussion@lists.sourceforge.net; Wed, 13 May 2020 12:33:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FcmDu0UuDZjIb5PrcqNZfgX9g0DuW6GCIKpu1ZE3ZU4=; b=gx6ALM8hiIJlLNjM9zIia41C3x
 gWkwjg2oZXAm8JKfFHplNncI2lTR33Rb3+sdwpDCPLMl8gvHfBUWAfnbcVt/k0RinkOVGpP0OxSF8
 KNYolIQFuBBVDKvAR4TyCOYyswYsS7nMtDkiY2ktIzXZoURRhhGty7rMDUNz48lksC4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FcmDu0UuDZjIb5PrcqNZfgX9g0DuW6GCIKpu1ZE3ZU4=; b=S17eI9nq7vMwMHXD58/5nEKoE5
 6gnEycI29CNCFvu4kL+Pip1/whKoYyZ0mv2jZj5PcbgZSUTDzWQeLXhlrKV3cUuGajfDEf9mjQX3v
 +YPst4YmI26LgH/JXMo4MXvNrfxHpD7FZML1QnUhHrNqvN5KCW4CtlweoNd6eGcR6xS8=;
Received: from mail-eopbgr80131.outbound.protection.outlook.com
 ([40.107.8.131] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYqa1-007l7l-Ne
 for tipc-discussion@lists.sourceforge.net; Wed, 13 May 2020 12:33:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bn5AilFShKowp4RZO3HIP/SFthKNtdOqY6V8u6A6J1Gr2VpN2dgWeLrK30CwCd+bJWa8M+KqfYYcrgU690WnCSP1LHPmJ+VYVeuT77DE2MNVJCUietw3GIMpLEwvmOyRoYe00whDGPMR0EccFr5uKyIbDXif/ylTXt/S3BBdZzh8TnYlaw+WdE8r684BOjD1PEdHxKzwa5Nn64vMxZ7OzfUlUnuWR9OJEPtQyWCRbFGraf30D0dMU+54luesoUHqHt0ODInqPmTJrRius2PwWg2iHj4JaLlRoShOj+2p2v78kNoW/PTmy6YB5AuaVxbBXnHLqbtn3FyGaXoCTWhZ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FcmDu0UuDZjIb5PrcqNZfgX9g0DuW6GCIKpu1ZE3ZU4=;
 b=Im33my2bzSVDIU7Zy59LkewIAfcFCt1AKPK7WWuJjdadnnUUtOjY5zLP+ljrBsqBuMYJq0ymxSAU0szw7w6g1mU4d9KeB93hCYo9jMtNMGA/ZmuHTEGXD9FM7klnX3OpS6TiXX6x3XOtapYcfvl3IVDwh1FbB20XmfY+MK4QYnyfr8WL1OmD4D/d8gsAKlnBQrfeh/BxHCN+b1YFANwEdAhAVFNUfb+atOkrzTHVR2xYzFFBOeItzgr9qpnkWbnXIRAdS85I/zkbpW12mX1lALmDqFSUSThmJcbAqh/fIz8AET6Zz5ysl8ykwN46q8IqOI7MI2U/HxxozRf7v+K9dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FcmDu0UuDZjIb5PrcqNZfgX9g0DuW6GCIKpu1ZE3ZU4=;
 b=b9nTBH+pbPXTorT7ZgeMGNw01X5idq6r3xs+ayqC8MVeBxosBta/yVnCMuuGPpz28tHO+uvpo1xRMvadDeazZ82x+e+4B/lSaWLy5KH8QnHV0QEs7UpOFdf8kQVdgTR2S93BGKYi9GbTgi3/M4Gz1VJQsTjvtq5WLdUtG8ZXulA=
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6SPR01MB0038.eurprd05.prod.outlook.com (2603:10a6:20b:3b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Wed, 13 May
 2020 12:33:32 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3000.016; Wed, 13 May 2020
 12:33:32 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Wed, 13 May 2020 19:33:17 +0700
Message-Id: <20200513123318.1435-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200513123318.1435-1-tuong.t.lien@dektech.com.au>
References: <20200513123318.1435-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: HK2PR02CA0203.apcprd02.prod.outlook.com
 (2603:1096:201:20::15) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HK2PR02CA0203.apcprd02.prod.outlook.com (2603:1096:201:20::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3000.20 via Frontend Transport; Wed, 13 May 2020 12:33:30 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93aa0dfd-7354-430d-53ca-08d7f739d8e4
X-MS-TrafficTypeDiagnostic: AM6SPR01MB0038:
X-Microsoft-Antispam-PRVS: <AM6SPR01MB0038EC1600E38708A1E12838E2BF0@AM6SPR01MB0038.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:530;
X-Forefront-PRVS: 0402872DA1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h213VKsLi2MqMlPv+brb6bY6VbVL/oTi6C8/IGs9MB+Yd4LYT0f80Y+iyc3jSNtm+Rlw4qF/+MQBEFfF4XJpDaNRm9+oLZ07cr0Bm/g+27hzdQbCyRyMsVyNoDYqFw5lwL9z4KFIJqyr78KqzNNj2Gxt1+sUWH5EbdK/xF2MR+MaHn1giwYnPE4C+Z+VArDVvoFaCYjvmT81v9ugtzGP3Fs2tqXJ7wiy6dNMa5dqLButZ2ct+JnsBhZIipde/ldhgUndbqwA84PG2Tl6NbVqN7IvJtusKg2ABTAHovqjkroqQyh2t7PedbizsMP9VjH63PTXo1REtMKN3sG6wqRlRfw8ucL9mu9pXXAxyJnVO6JYNol7uUhgMB6i3/tCBZWv6Qbqu68rxYWw+ShmAEBdNJf2NLPTI6p1DVgC6bLdzkYwxlKHvHY2l8XDxk16OdNcqV66dcr9xo76EyF4yaaXWJgwK8Fpn2gUpGHtXMdJjMECCVNJ40pVaBrGYJPG3sqynK2GmopsWQ44Geox9XA/rQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(39830400003)(396003)(136003)(366004)(346002)(33430700001)(7696005)(478600001)(2616005)(52116002)(186003)(16526019)(66476007)(956004)(26005)(316002)(6666004)(36756003)(55016002)(86362001)(5660300002)(66556008)(103116003)(33440700001)(1076003)(8936002)(2906002)(4326008)(8676002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: KYERdEpO1mi23shs+fQhs1h27vTvlNGntc7Ai7LHCEnblOX5avGDrOse3zY9QRXSWIGK1eKVC8q6nIfxJDSbWYYLjDzm++homPo85fD1X+ht1I7z/r02NLhuye5Vfc+0TUZVTUs7Rapf/ahujbNV0FITK9gvSjD23R5CwGvpelT2YNBqyhw9b4n5JWa+7PsbApdsc0G6rFq9R4xTiaZcbrd/Un8Zi/IhOWSLYDxM+u6sg7raym/n4s5yap9HS0OP1FBUhagns68jur2M2Sg9B6EKjRelZug7brT0vX2gvL7Isr0H/yJN8HXtdlGMxZdhZL+TnTmvX3fj293IQPO8jvv4oQ20JUYhVLXX3tKV/q/0aUwk2iTK1jAd7/GJ3EvKlMjcj/Bl8CeLyRI69zsCua2d3QWxXFOQBxAhRJuOiCPDg5buBHfc/R+J3gZhnPIbqBYJ+0uzq1IjhXliZW7/NckC/w3I9wDPmlcJRTihvkM=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 93aa0dfd-7354-430d-53ca-08d7f739d8e4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2020 12:33:32.4081 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4ZGhg2WhulgjW3QopR9+oYYvDdcU9fU6F3cm6TxtOuODeKC4P5Y1xVsX08MUOo9wXa1wCAQqc7gdLUmBueQnlf4EqxKwGVFlALfzIxbiX60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB0038
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.131 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYqa1-007l7l-Ne
Subject: [tipc-discussion] [net 2/3] tipc: fix memory leak in service
 subscripting
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Upon receipt of a service subscription request from user via a topology
connection, one 'sub' object will be allocated in kernel, so it will be
able to send an event of the service if any to the user correspondingly
then. Also, in case of any failure, the connection will be shutdown and
all the pertaining 'sub' objects will be freed.

However, there is a race condition as follows resulting in memory leak:

       receive-work       connection        send-work
              |                |                |
        sub-1 |<------//-------|                |
        sub-2 |<------//-------|                |
              |                |<---------------| evt for sub-x
        sub-3 |<------//-------|                |
              :                :                :
              :                :                :
              |       /--------|                |
              |       |        * peer closed    |
              |       |        |                |
              |       |        |<-------X-------| evt for sub-y
              |       |        |<===============|
        sub-n |<------/        X    shutdown    |
    -> orphan |                                 |

That is, the 'receive-work' may get the last subscription request while
the 'send-work' is shutting down the connection due to peer close.

We had a 'lock' on the connection, so the two actions cannot be carried
out simultaneously. If the last subscription is allocated e.g. 'sub-n',
before the 'send-work' closes the connection, there will be no issue at
all, the 'sub' objects will be freed. In contrast the last subscription
will become orphan since the connection was closed, and we released all
references.

This commit fixes the issue by simply adding one test if the connection
remains in 'connected' state right after we obtain the connection lock,
then a subscription object can be created as usual, otherwise we ignore
it.

Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
Reported-by: Thang Ngo <thang.h.ngo@dektech.com.au>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/topsrv.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index 73dbed0c4b6b..931c426673c0 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -400,7 +400,9 @@ static int tipc_conn_rcv_from_sock(struct tipc_conn *con)
 		return -EWOULDBLOCK;
 	if (ret == sizeof(s)) {
 		read_lock_bh(&sk->sk_callback_lock);
-		ret = tipc_conn_rcv_sub(srv, con, &s);
+		/* RACE: the connection can be closed in the meantime */
+		if (likely(connected(con)))
+			ret = tipc_conn_rcv_sub(srv, con, &s);
 		read_unlock_bh(&sk->sk_callback_lock);
 		if (!ret)
 			return 0;
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
