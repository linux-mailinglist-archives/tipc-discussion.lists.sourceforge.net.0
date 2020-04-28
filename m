Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9681BB95D
	for <lists+tipc-discussion@lfdr.de>; Tue, 28 Apr 2020 10:58:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jTM4o-0004UX-7w; Tue, 28 Apr 2020 08:58:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jTM4m-0004UQ-G7
 for tipc-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 08:58:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+J/rR6QuPbytcXxxvS70BIBAeobH7naU8rOVFtKvanM=; b=JpVYNPrXhmLD0M5n2nSeml6+OJ
 Ditu1Rn9LMcHVdyPHhUOeMTvVJ6lOF8BXquZhmLCsynLvOejmRALp41yarY4OyLFyPOx3/VwY04gY
 bYlMcTJthGX1fhGdA9cRe3fO0P8K03PH4qzau8nMnS/3+2qvwpHdmxJW/KqbIydysztQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+J/rR6QuPbytcXxxvS70BIBAeobH7naU8rOVFtKvanM=; b=g
 3/RZuwqaVb2hfXTIIQsxkpavOcah+Pk9SoxYccioV7W6k4JdUgE75ZmF/yFHn8y0V6v6Wt4A+BzMg
 z4bKXkfQZADz+y4VrpW2cczKG+h+CuaoGr8qV7G0WuavtTpwrbbvy7wbUd1ydHjWSjYxZGzAbLfTc
 JWhOmJb2CimAWvEY=;
Received: from mail-eopbgr10115.outbound.protection.outlook.com
 ([40.107.1.115] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jTM4h-00Ds8z-FX
 for tipc-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 08:58:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlZEN4D/GoTw0EWFbAYvuJkU3SV6VL/HWv3TkqTfoLlf2+/TOL6B+7t79q+2UbQCDtlBxpoV4Rsps5GtXTmwBvMTOf5ptpMTYV1zGSgCbHcYo/6R3Z2Qdv6/t0i+U838plhNVhzRABUBszkyXXpNErJ4lrI1p4WrN/oTaWaWfxj92zUJwz0iL6VUk/W7pSpVo7QIdmgiqLQW2pP7gk5ZRyHB8MWWXpfn+BeO0pSgVhBWyv5dIaKHKPfxoQiqvVGP2HEYb4W5Y/Y/8v0/GxGpWfSaORPfqmE05j0SLO9NXXpdebF2YYfho88BmxE4eV34FCbMhA9atyu6lAsZngtCvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+J/rR6QuPbytcXxxvS70BIBAeobH7naU8rOVFtKvanM=;
 b=R93hKXvdrVGVbVF5wfdsjvqMCTzIZMTJCgW8yjMEQHKLyajd69c8ODy3rqQfg1AigBgl2DbM5ELl0G0olBR/SZhVjANcnz+YtD88dJWiv+53baq0MX0+xqGYMWvKDXUy9+AWGc+J6R+TB2duTjOZXK6LRlJT2+RiLsDq1nr3liMs2tnVR8mkbHI1eBo8C0dq1Pczuyev4442KNEPkCacbc38xfww+BhOHiD4kQEAEB7V45HKQO5cHZO63AxUtHZK50WEBbrUTBIj98FYp/ZkfvoDcqmkYOvBq6qgNHoTfXLPUOp4EcIxBQaqxnQoOR6AKGHv4uN+R6yGFes0XiTFSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+J/rR6QuPbytcXxxvS70BIBAeobH7naU8rOVFtKvanM=;
 b=oXj14nuwUmBwi/dNKDlNACN5iz4FMsUrAgn93SZgsW4gpihYaGLZC1QtzCZzKgEmLum1+H+pmZU1hFrcP3k2ziVEPAygGVVY5yMvk4MVCPn1Wfbg4zVpDX4ZGOxqYisXEl5E8jHV83RO9LH9jhI9FtdrCjpLTikDDB6a+y9XiTQ=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3893.eurprd05.prod.outlook.com (2603:10a6:209:b::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Tue, 28 Apr
 2020 08:58:36 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 08:58:35 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Tue, 28 Apr 2020 15:58:26 +0700
Message-Id: <20200428085826.15412-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: SG2PR06CA0168.apcprd06.prod.outlook.com
 (2603:1096:1:1e::22) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0168.apcprd06.prod.outlook.com (2603:1096:1:1e::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2937.13 via Frontend Transport; Tue, 28 Apr 2020 08:58:33 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 734860cd-e001-4fe7-0b91-08d7eb5255ca
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3893:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB3893A07E3CBD0904168E8E9EE2AC0@AM6PR0502MB3893.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(366004)(376002)(136003)(39850400004)(478600001)(186003)(956004)(2616005)(66556008)(5660300002)(66946007)(1076003)(66476007)(16526019)(107886003)(36756003)(316002)(2906002)(6666004)(103116003)(55016002)(86362001)(8936002)(26005)(8676002)(7696005)(4326008)(81156014)(52116002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bw3m21nYwJUNDh+9PokAEEacbxOAZ3LA3uMT0Mhn4/sMp/nK6wLDvp1Wl54v6/NJwKrxiPxhZHIgihnJJ0J2NEcJq0PF6KGINXtN9Ba1jTOC5D//Wr/zlYCcQCmcEcFJZQk2sCPFQqXEge+Hbi2Axqz18WkaHBckxOqKwOP7ny4hLhFpz/ff9Dhy8sBHLG8GPEBj3VSr8rTjr49ndG/kpps1S/9FFe+2W+jseXjpWCc3b6OoLfAINXUV9tKX9aWral2s2sWpq8ScXTW5fRwzSedL8XHPM+2RN8GZyzbn1NGF7JpblvNwnTg0NjSnCLCaI9e7GzYO+Pe1EOsCBaE35+Lfi6JmZI7Yst+Mampvhgt+r66DCtVRIe2VxyFlG5P3czfNflu4NzbWyXU56xMhFqiaZWq1csOUR6BZldJO7vaoISvDkZQr5nm2TboWQV9D
X-MS-Exchange-AntiSpam-MessageData: 92QLqlO0ZMejK5zcfcqdorIg+a1GU1904XN2VQU1Qrw3v1+Qp4TTFemmm0LdJBzgmfsu6mm3AntnURVPs1/wWYsxLNCR7UHegi0ZOe1438hfRS8WTFfgh5RGFlVsynuITaIJ3nX53WXsOsj7g903Vh3Cvjd1TFNrV2iR0POZ7EHJ466uRVS+SgEQjk8qH8LEfjrBsXLsUE5B5D9el+G8I8mBGu9FzEf/j5EgWiKkEasf/34zdAFrXAsGAdnaVRpwAET4QAd51EhR91faS0z5TbzaffAEF6nPFT4bW+CsheyBwiklPzLpasi6h681NZPNNZtYQfwRvf8xk9OkRzBHlk03SSO43uCnTMC/L1ObOHv/zpvQ3L4KeH6YEikzztDKumQAUy7Tavp4EM7FNiMHsDnVdp1nz8suTPn99e4E+cSw3bP75gQwEGOGHfTaPfCYoD9llrE+r0zAdF9TvVhsTOoGHZFIb4v5CrbRG8n0bJRhZz/g752FJxt7UJc1snLSORI9dFst0rBbc2HuJc+fa5bahopeN1bn5RCl2INrG1sOAm/5raSArXACG2XbHPfKQ8M/IuJ/rCsRbPKV/Ire6n67gMx2aQFAyof0Upmop8INm5OiVglL7C/OewRbOyiE0LDliSOEChDDIrWT8kRnDjbHygnqLPgxeRQRWAP33rGQ66DIIfT/LW4MfT/GI0LUGqfH1T0cADj3oWQ12zPE6hqtXb8UOAU/23vAbAXv9g5NXIobYQRUM4ypG/aJrfqU5ikfLLPJzOGpvCwyP+axVq8PC+apOWFiiLQj5mHbgrM=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 734860cd-e001-4fe7-0b91-08d7eb5255ca
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 08:58:35.8782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YXzOU3rWQ2ZdKlEn92qe4mZAyf0mJaNMlV7gXlHNvpcuJ3UKhJ5+uH+pkI5k3lXUhnsA4XGzBi0o/veS6G7Wy+J7XvZnbxwk9Kk+ukHf+wo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3893
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.115 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jTM4h-00Ds8z-FX
Subject: [tipc-discussion] [net] tipc: fix partial topology connection
 closure
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When an application connects to the TIPC topology server and subscribes
to some services, a new connection is created along with some objects -
'tipc_subscription' to store related data correspondingly...
However, there is one omission in the connection handling that when the
connection or application is orderly shutdown (e.g. via SIGQUIT, etc.),
the connection is not closed in kernel, the 'tipc_subscription' objects
are not freed too.
This results in:
- The maximum number of subscriptions (65535) will be reached soon, new
subscriptions will be rejected;
- TIPC module cannot be removed (unless the objectes are somehow forced
to release first);

The commit fixes the issue by closing the connection if the 'recvmsg()'
returns '0' i.e. when the peer is shutdown gracefully. It also includes
the other unexpected cases.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/topsrv.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index ad78f7cff379..c364335623ab 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -405,10 +405,11 @@ static int tipc_conn_rcv_from_sock(struct tipc_conn *con)
 		read_lock_bh(&sk->sk_callback_lock);
 		ret = tipc_conn_rcv_sub(srv, con, &s);
 		read_unlock_bh(&sk->sk_callback_lock);
+		if (!ret)
+			return 0;
 	}
-	if (ret < 0)
-		tipc_conn_close(con);
 
+	tipc_conn_close(con);
 	return ret;
 }
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
