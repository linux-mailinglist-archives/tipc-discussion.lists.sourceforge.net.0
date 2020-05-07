Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA5F1C87BA
	for <lists+tipc-discussion@lfdr.de>; Thu,  7 May 2020 13:13:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jWeSv-0000EX-2N; Thu, 07 May 2020 11:13:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jWeSt-0000EP-BS
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 11:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xfobDmC6PmoHqhNc1LX/gQ4kKFVxgxRUDg2oeOTEZtY=; b=T41JFW5d2K28NWbnLJjsKbWtLB
 QUVGnYxoZvZXGJHSq9xfsF5vCnUCMiuofpLjcYqkn7hd0SP5ZUEqV/LtZOL6xJzYd8a86ESUtkSQ9
 /M5SGqKxU1LlVogxKTpQh4WSOaoPt8Srj45hvwQQwLkHknvpyBUg9CXzmMhGkyRbS1og=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xfobDmC6PmoHqhNc1LX/gQ4kKFVxgxRUDg2oeOTEZtY=; b=W
 bOWMkZysokymPmWaoci9pOClJKJTKsKOR0253QuESX+KMFBuXT4/BjzMnwdHb5l1CPzgHw5QmsPn8
 hIqXBB1zWHJ32TzC5qD6YGltFRWh9lsFBtqCdvvoQIMQOWPZ4idSn78BlUE8UNRzRcjbF4a2tc2QT
 ni4MyZvriUoaZWkY=;
Received: from mail-eopbgr50126.outbound.protection.outlook.com
 ([40.107.5.126] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWeSn-00E6tO-GO
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 11:13:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=byUI474824UgavR7aeTB3ryC5IrCdMLkTriqoPceAG/FwPBFqG1c8n+DqyzS9d7xCnxPvPmKWTGBoVKY6bRWb4OqdqVZoI5JUndNZf5qwtbjjRGQkFAEInk+dxpgcn/Yk9qjHynqLlO8GbWfc72OstvEkXryhBdW8gdIHuqCLhwZF+1FpW9GU3FjDp7CowUlMSR03ic7CUE1IwEptt+vPIv37wGjxfgASilI0INy2dq71djAHGjF1BMmqF8BztwnmKZUVrWfUPEetX/gdZgv14DmVjMHNPTgvwEq9PNP1QuZzUg1Io8M/EiVgQxYNd+893Re0tINJPXNbktfW/kwGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xfobDmC6PmoHqhNc1LX/gQ4kKFVxgxRUDg2oeOTEZtY=;
 b=GoAlEA/cv9KWEpU/rXT4nx/e9UYcHQRSalw5VO+dYqLboBrylmmqEG325agfTkSaIOoloCovvqBuIEDyG0Q7FcSWdLrYOPZVEzD9+WC3AECNNDEJfg+bFSYpWlw8yKbglaEpuTBzbQtoDq7kO2zlI53Y/FCvR5LtVbR3jqXVaG4j8TvC9ETRN0mvFDr8EwsgDBJkgUFRB7NweDM/TAVF79KElicgyzRwrWk+O4i5+Q62NZnftpFSBXPu/OBaqXCCeAyMmgaFyiNoYKhY7o7DL10noE/S1J5HJGCfBFesIwfUrcbTAOIW8WHCuy137xgxUqL9vN2J7sGwmdOHztUnuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xfobDmC6PmoHqhNc1LX/gQ4kKFVxgxRUDg2oeOTEZtY=;
 b=qTpRPYJshMKZsowzGh6TjE6ZuBNGAOWCohuUtpHf29cZydSyLCFA2ZbXSRdtGfQD3Vh1cj1fcXL+olbX//RGrbKRGcHE5qe2u3by+mOazLh86njxtoNLviLwlFX2yUyNsvUrux8IL6DQefZytWpPyWtLPUNvUuihZqwe4uuRGgg=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3877.eurprd05.prod.outlook.com (2603:10a6:209:3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 7 May
 2020 11:13:02 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2979.027; Thu, 7 May 2020
 11:13:02 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  7 May 2020 18:12:47 +0700
Message-Id: <20200507111249.8760-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: TY2PR06CA0034.apcprd06.prod.outlook.com
 (2603:1096:404:2e::22) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TY2PR06CA0034.apcprd06.prod.outlook.com (2603:1096:404:2e::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Thu, 7 May 2020 11:12:59 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab0d0e1b-738a-4732-c818-08d7f2779b77
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3877:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB38770DF7E5D17497A8A29CB2E2A50@AM6PR0502MB3877.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X4HiLk8AlNA8A7IVsrv2nH+4UyHk60tUZj0pK2SaqhjOFSQqwNMUM9PgLkPr1lc6yp72MhVI1KzV73/cj9IVXtiYcMV16TbIQ77aXfqzyeVvG84f9e2i2RCuqlqze5L+/RcSAUc8jTP43Pn3OBDaX8N2bkpRINd7P+C6CzdHbvxRFjSCHGmBq7aBWTvs6cE4zCpPD2i6pd0I0ywVucpsg4YVtQGaAxaS3aD4p8JJg5E03EhcerIK5gyU4tZgZb4L3QPjXu3df2onkUGZnDw33R2N2T7NM1aCH4SlZT3BKz3PizIXGArPwnYM+frXyV6x7et6jlf5Y4nvYYTNDt8CXB49j2odlVVwNYeOgUoSLzXo9xkfO8on9oALsnh/7HKgoj4jbPfeYRfYv1y6cj+4YOu7rTqeZTUy9gSGyiLGhVWvXfcZKgfCuwGEYxPzD96bTTIhEYMeP0NtNRHDbygdL2drZ4ee8hSy/uSifEnp+eXGWTJtL3hwzMpGZ0gxZA0APhPHfTaqRuc6redO2fPXPg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39850400004)(136003)(366004)(346002)(33430700001)(7696005)(66476007)(66556008)(52116002)(8676002)(1076003)(66946007)(33440700001)(103116003)(2616005)(8936002)(316002)(5660300002)(6666004)(956004)(508600001)(4744005)(36756003)(83280400001)(83320400001)(83290400001)(26005)(55016002)(186003)(2906002)(4326008)(83310400001)(83300400001)(16526019)(107886003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: eU6VhR+TCwkh3jtGUYWO0ROzEVAcWppUOnKuAiE1EjI476FUpC51scNljnRGmrqFhgDb974C2n8zSVoTt34/ScH+a9Gv9tOE/OcL0Y2cHgVqTRX6FAGObuUe8V3XgVrzj/JomGwwvzh/JyaDPG/55yBpZWRJIEl7LkvHh/B0C82Ozi9O5ngrcewBkJWN3s8M6yBsteeAhfYolX8/AckeNrv4fMKffgLi8C8lEpjwsNFG67XxrFF2MQXQs/LnbW5vYmvBoLFsNd3GOEkA6aZTlrBtPGMBQFXDEpUzJiNTGRTx36nwrTOsqZIx8xBhweB0ITETk6Pkwc5prTls8Q8hlgPu5dFQuXfdMFHYYqTv834PpGndGczQNqOvVjQmuD/Dzr300uGgEQY3u6i1Q3k/VIUBI4sLd2YnTMjW4ByEaQ8OfA/Fe2P2WkWVcimIOsqqBNDSOnStr7By+0BBnOs/U/FhNCDbKOwEAFiaNPJBRsVAcrI6ea7dkb6LDJQh8eNZmeHYhrthw31bXWEpr0XEfmwsHWFXJGY2F/k4BzDBeojI3lMFyl0k1ywBHWSO74CkMNGuypckDXFSDkdh4GeUdisUQRStr7VSwY2mFn9Xc10QyZha5zIke71GXnOYZrLu4bKlaV+469mLBUUDfAndYro+eYeUSz2lBR2tgXmw8r+GHMaSCbSuVlvo3vqc5qH+l2EY6ezYnp3fNeYZNg/jEbwIfF/LA5qWnnlg8ys9jqZnY/UUcE++64hNQB2fioRfIR3pcd6EKA+F0Yd1R3YPAg67+Nt93vFKwtBczTl5KR4=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: ab0d0e1b-738a-4732-c818-08d7f2779b77
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 11:13:02.4280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P0oL4DZ/77psBJfsofB7aPJC9lb0isbCEuG7V7BsRkg5YJupujXrGhbrsqRlC3hGErx4CxEwGIvKyTKRZ3FcAxoPeWr3d0JBDqSbZugtl2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3877
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.126 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.126 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWeSn-00E6tO-GO
Subject: [tipc-discussion] [net 0/2] tipc: fix a couple issues with service
 subscriptions
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

Hi Jon, all,

There are a couple of issues with our service subscriptions and here is
the bug fixes, please help review before I send to net.

Thanks a lot!

BR/Tuong

Tuong Lien (2):
  tipc: fix memory leak in service subscripting
  tipc: fix failed service subscription deletion

 net/tipc/topsrv.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
