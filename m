Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF14219759
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 Jul 2020 06:26:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jtO8s-0008SA-Ay; Thu, 09 Jul 2020 04:26:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1jtO8r-0008S3-LO
 for tipc-discussion@lists.sourceforge.net; Thu, 09 Jul 2020 04:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GWnkwciGT4zUTG00C/HQgnlZpgjVqqxDZHgsZ+TfejA=; b=gVJe95IJokWXVkIMYrWfbMu529
 CJZt3lIWCTUh0rD/E78nJSOmB2WgsdCiO+7b+3db77EshEUtcf9R009s62K97NODJTQQ9d/Rpc8xx
 adZBJLNaxTWrKAJAb0Xl+wkiEExk0EXKP5XyFw8PrWuKyhfGqWmcrQe5/RnM/PnJOHnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GWnkwciGT4zUTG00C/HQgnlZpgjVqqxDZHgsZ+TfejA=; b=b
 eacxPwdTdUALXrf9Oe/XWfih58wF+gPAjpwyxnW4MwMKm1imAUzZUTl5xzEtHR8/2N9nEmyEP6t1l
 wZP1wVLxk29qF/jAYaLVHR+cnFosPC2RsCSRUpTWL1greNA+AZgUXebWrsjR6bHU/MNMKYseGmqtU
 xBlTQqgRBuuS8wzo=;
Received: from mail-vi1eur05on2126.outbound.protection.outlook.com
 ([40.107.21.126] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtO8k-00ElJf-EB
 for tipc-discussion@lists.sourceforge.net; Thu, 09 Jul 2020 04:26:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lvvSwXIE+ldU1KdZgGf3hkqmtaimkHFAsVCoe/5NfkwhZFUK9QvS2YMYybp1PsZgtFeus3siJQCR5goAF8qhcKRnvEyk2HgAxXTS3DiFcsHzXcri20rn/2DJUoS1ehaL5IMCrru+siao2Y1w1z+Z/6ujMkGR30vDk33kUpfE/a+qF6x910vk6gKQdbHZMrK9M3yLzWdzcURKB4+K4dFNQ3r1hzsUYVpjhwiJYT6qcehQZmF0NMDdKzREB1htvLUXx2Ce84OwdaDK9BiemxaOAkEaGL1G5udqwlnJ9mmTTagzFnZlkx6CW46z0U8MS5acjDXj+0yBIqAIjdSbP3tKRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GWnkwciGT4zUTG00C/HQgnlZpgjVqqxDZHgsZ+TfejA=;
 b=d+Mioe6HhcycFXOaSh5JsM3hSAMaIS7GUsJw15RM1TNcThFvQnvJv2+UWNzzO+qa8qlu3qhK3+E2AzG1Fy/xIax1BhHuRStaQ1/F/rz4idHkORosT3pigvz3az7GnGoGdBeDM4budGePLDMsBhtrezOaLSxDvPtKexvJCG7AW41p9WUBAXN5yQYG7De4VPcBRyEs7P5eYFy5tAXk7f3u4GKRp0YBqVk0t+YO6Qe6SvPVYINAjmIla6ei4NVzAUOMTfewlPIy7WKj0CoRmwchYylsYRgpgUG29uhnxQ0TYV14qw+8ERW2O14DjoztHH4Ta4k4zc4Z+lpHOGTEq45qBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GWnkwciGT4zUTG00C/HQgnlZpgjVqqxDZHgsZ+TfejA=;
 b=g0Vb3dK6skpuMcW/xIMtEXdw47D8dCY4HBX1sW8QuJOYP2Vq4PljRjxqds/rNrCtH9O8i+Empj/K/EGvEL/GaMW4GsUfo4cbRzbAIBQwggPVW8xra8c0mkIS/T6AeX+/dfelLJHf+cOasyh79wY+qmGZnmcZssWktfyZTSAd0N0=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB5838.eurprd05.prod.outlook.com (2603:10a6:803:ca::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.29; Thu, 9 Jul
 2020 04:26:09 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3153.031; Thu, 9 Jul 2020
 04:26:08 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  9 Jul 2020 11:25:55 +0700
Message-Id: <20200709042555.5424-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR01CA0174.apcprd01.prod.exchangelabs.com
 (2603:1096:4:28::30) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR01CA0174.apcprd01.prod.exchangelabs.com (2603:1096:4:28::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.21 via Frontend
 Transport; Thu, 9 Jul 2020 04:26:06 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9269c62a-ba4c-4395-b1d0-08d823c033d8
X-MS-TrafficTypeDiagnostic: VI1PR05MB5838:
X-Microsoft-Antispam-PRVS: <VI1PR05MB5838B83F4C6F6D602BDD152BF1640@VI1PR05MB5838.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:102;
X-Forefront-PRVS: 04599F3534
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wuwWpGZJ+DdS/IzU3noyn7YBDWHSCCYy8avidOqGvA35DDqFQj4u693ENXzTq2ir6xk/j4blasEjA940TkNj0FbecK4lJIfHuP3k0lFk2apouXPsX+h53HgdFHZk3mU3V/V7Vj41Gijeg/UBSSY5SMxg/xKQQmoax3V/jPz9m1K9vSO2TFY+Vde/e9oVBvEZSMTcTIHQZENw+aUkGFJvlKiqlfVY5UXB2lUPLZW8UDUcB/KcJKDFYgCUnu1PKyjGfyGkp6jFg2MdZmj6stguW4/LF5aAIoMtczaWD5gMWsybCmmwR0NElxCSp/8t6bQGsll1OO04rQBqOOjEqYd5Qw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(136003)(396003)(376002)(346002)(366004)(26005)(8936002)(8676002)(6666004)(55016002)(66556008)(66476007)(66946007)(316002)(16526019)(52116002)(186003)(5660300002)(86362001)(478600001)(103116003)(7696005)(2906002)(36756003)(2616005)(956004)(1076003)(83380400001)(4744005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: MrXNIs081eJYjNBUIgEcb19zSOC+eSgStypFtwEiv058vy/9knnl/DykVGExiuR+THB337qejQF1+m+je2L/gJmNpY9pf3wfU1332eMxbgXIE/urzpHKL9ZNsWxgf7bDn3+AvX7eDrgIxGOE1Z1ndRpPYbnNrV/WiyDDtjkDfK22LMEnvuIl7a4BaPtk6R6VU/4YibI0kyaoVggRH9Pi9P5axitj/zhuPFEEz1/T2KZt2wWgDxUAICUXbh4Q+bXfyX1rYoBnksq1zGNRpcWiIoAfjRmp1KyzOYKOAW6DPlK1HlPKvl3N+6tgSRXFaHoaZ8eU1a1hEwYXE7v9nYvZAxuDp2NXkMK/8TrQMdGvTX0DkK232pq3cVky1mTXI3Wr4zpP7KEtzTTLD3RtBcjYotzzlwaHCuHB5jq3iGw/LYu4TkkmdCg4xiaGvRNyI4CDyiGlern/nXEyxToiCxmEQZM9TTp1CP9BPLztD9aeriU=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 9269c62a-ba4c-4395-b1d0-08d823c033d8
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2020 04:26:08.6285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mQeXtYSccDo59uO4WmoLUViBQSvOgc/NcQ2HO+Jz76ofeoNWQom4H7Daba5OS6AHdSIFd1A4pzK6gnsJ1K8UKtZHUza0EnwhJy0ajD5QHtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5838
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.126 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jtO8k-00ElJf-EB
Subject: [tipc-discussion] [iproute2-next] tipc: fixed a compile warning in
 tipc/link.c
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

Fixes: 5027f233e35b ("tipc: add link broadcast get")
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 tipc/link.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tipc/link.c b/tipc/link.c
index ba77a20152ea..192736eaa154 100644
--- a/tipc/link.c
+++ b/tipc/link.c
@@ -217,7 +217,7 @@ static int cmd_link_get_bcast_cb(const struct nlmsghdr *nlh, void *data)
 		print_string(PRINT_ANY, "method", "%s", "AUTOSELECT");
 		close_json_object();
 		open_json_object(NULL);
-		print_uint(PRINT_ANY, "ratio", " ratio:%u%\n",
+		print_uint(PRINT_ANY, "ratio", " ratio:%u\n",
 			   mnl_attr_get_u32(props[prop_ratio]));
 		break;
 	default:
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
