Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27825128C46
	for <lists+tipc-discussion@lfdr.de>; Sun, 22 Dec 2019 03:26:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WywUwLiIVB3Wp5nTvh9gjj0PC1L3dji4VLuWOZOf3qs=; b=GjDEuosJ6OXJCkBJ8pGvXD3kA
	h7wPcViYdmnOZpOUA0eAgSm26EJgYEdHihljTuHtk0u5QFRVZ3oe/lx/H60fxpT5w2/7gM2UQvgkk
	+wqnPZaSVwsI8nNxjJALfpPVZkxPBBhgFWOpUZRiuPolBxmeJvhkJBqf+sZazxk3TBnxA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iiqwx-00044z-BB; Sun, 22 Dec 2019 02:26:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iiqwv-00044l-Jd
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mrr9j9bJmaRQXdVXONUHKPdGlgG2Ll3CngLZRKAu4tQ=; b=ELe7N1maSeGFtgwmLf5VxinSm1
 oVFYPnR2bZnlnu4DChbpLspoW2r+gSvraa7hZIn4FzmPaxus/TBzZ/mn3mUVjgKOmhYR9+d3dn2xu
 fHE4cwXiKHIVm7TGlTBwxTvGzMFx1aOHtPp/VC26GuNz7yOv8WWrIa5EmeelrjZmZ04Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mrr9j9bJmaRQXdVXONUHKPdGlgG2Ll3CngLZRKAu4tQ=; b=ENVPT/F4aUmnzXvYvZEBi9xjbr
 xJudf7wetMO0CRa5MpscU0JXxi0ie5APKUJFDwwSoG54eN4g0DwLCjq0lKNuxa80/hkJ4qMAlN7lA
 4kCDROH0ARhpWDml1ybF8slb1aoK/FrVrTzoVet8NKrOdWOH1S6N1X1TUVtI8R4EHzcM=;
Received: from mail-eopbgr50080.outbound.protection.outlook.com ([40.107.5.80]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiqwo-00C6TG-On
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P7gDE79mLUT209drxQGKRn5utOWz9Ng5Mu/8NwIFHz6DSIwHhXzXBmzRzdPFmjN6BPb+ZBFkTIq70vUfqZozf6Ead2VgZznBVIZ/2pUd9CFu1ug/2CkqFxnqzjWP2NNnLnErUtKdNhis4AXtWHJGllxUDRGFKnqLjGQjkD7E+7C/ATK3uY9h3Iq1BR+IsadebjUqlQm+EskLsDpZBR9EMb0VJ/PwRk8Ztk07+LRt8CUZcaJHiQzmKO9qhynIrpDXIqXZxBfTXBkiULV5EmR63+YSBTL6DmHKx0DiOA6qNKjvAtwXMAzvywgmmqBOKz2oHA3d18l5tgGic1+F8Jsc5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mrr9j9bJmaRQXdVXONUHKPdGlgG2Ll3CngLZRKAu4tQ=;
 b=ASE4bj93S280tLzb3fGufPY4go8VNFXltM3DKPFKbt1bZW8JXJghrhjYiNw65wT+XUxUbXJYh7eF/ZHTWIlm+E205HZ7M93PQTzLxu4mhczWZ9SmstWrh2bC+qIUd3m8TsuINIO/rYlelRBeTO8RNgVPI9IBI+mP0SQNHIicp5y/DJt0QUTNrr+9g2c9ExXpvAlx2fUbO0gnnP6o5AaLo+SFA67pSozEX+27tD0+CU2WfQ8kHj0JIICjW6Y2CxMPMi1OsoJ3N2bXmbXY3gyRUkMwN0RkLQmG6LnllT+tq/MmvLqXMzboci+LgZ3JLtAjPz+/KjrdZo7WMDJ/GIiUog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 192.176.1.74) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=ericsson.com; dmarc=pass (p=reject sp=none pct=100) action=none
 header.from=ericsson.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mrr9j9bJmaRQXdVXONUHKPdGlgG2Ll3CngLZRKAu4tQ=;
 b=vA3IPL8BRJ4unjCpmD5A0SWZh2sckWjcKCkJU/rOwT2/3Eo7SVDoPSLdNCKsW9emaDXRrNGhTAgLSkugyt/NAV71th7XMIDRNw7FVida5xzah6zdfgHSm4tZMRtYOcinbrZk64tGX+ZWs//YsNDyjljcxeiCsy1JX+3HOR5g3BE=
Received: from DB6PR07CA0085.eurprd07.prod.outlook.com (2603:10a6:6:2b::23) by
 DB7PR07MB5864.eurprd07.prod.outlook.com (2603:10a6:10:5a::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.10; Sun, 22 Dec 2019 02:26:12 +0000
Received: from AM5EUR02FT048.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e1e::200) by DB6PR07CA0085.outlook.office365.com
 (2603:10a6:6:2b::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.6 via Frontend
 Transport; Sun, 22 Dec 2019 02:26:12 +0000
Authentication-Results: spf=pass (sender IP is 192.176.1.74)
 smtp.mailfrom=ericsson.com; lists.sourceforge.net; dkim=none (message not
 signed) header.d=none;lists.sourceforge.net; dmarc=pass action=none
 header.from=ericsson.com;
Received-SPF: Pass (protection.outlook.com: domain of ericsson.com designates
 192.176.1.74 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=192.176.1.74; helo=oa.msg.ericsson.com;
Received: from oa.msg.ericsson.com (192.176.1.74) by
 AM5EUR02FT048.mail.protection.outlook.com (10.152.9.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 02:26:12 +0000
Received: from ESESSMB503.ericsson.se (153.88.183.164) by
 ESESSMR501.ericsson.se (153.88.183.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Sun, 22 Dec 2019 03:26:10 +0100
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.191) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 22 Dec 2019 03:26:10 +0100
To: <tipc-discussion@lists.sourceforge.net>,
 <parthasarathy.bhuvaragan@gmail.com>, <tung.q.nguyen@dektech.com.au>,
 <hoang.h.le@dektech.com.au>, <jon.maloy@ericsson.com>,
 <tuong.t.lien@dektech.com.au>, <ying.xue@windriver.com>,
 <lucien.xin@gmail.com>, lxin.redhat
Date: Sun, 22 Dec 2019 03:26:05 +0100
Message-ID: <1576981569-27482-4-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
References: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.176.1.74; IPV:; CTRY:SE; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(376002)(136003)(189003)(199004)(44832011)(110136005)(26005)(478600001)(186003)(2906002)(36756003)(426003)(246002)(956004)(5660300002)(2616005)(70206006)(70586007)(7636002)(336012)(316002)(86362001)(8676002)(8936002)(6666004)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR07MB5864; H:oa.msg.ericsson.com; FPR:;
 SPF:Pass; LANG:en; PTR:office365.se.ericsson.net; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a2586b59-c24b-43d0-138a-08d78686502f
X-MS-TrafficTypeDiagnostic: DB7PR07MB5864:
X-LD-Processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
X-Microsoft-Antispam-PRVS: <DB7PR07MB58648DC4B51A8E708630F7CB9A2F0@DB7PR07MB5864.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:480;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yf2c4vYStnapAWGuIAHbB1j6I5VIemUf5gKYFno7OpYkJzqa3P0TkRTjjjbC6wfA9Y72tL6RjqPb/gtsQ5jpIIIBy2/oxe5s79HnhqlVxzWxjq2vPukYEiNpV4p0vs16IjC7VCfPOI9f2zJRMLJ5XdI6OVb1b5urB2GEQ/h5cZIugLcA2xR2TbMCQ4PO5EeQDl95lJ5mGM0WVrHklyFg8WUdWVR/oOc2IEyjsMVhLkHAs7o4zphQZ6KKUnis7yymcDQz+tf5j4jaULG/ByoJI/YdgdCiJCskWUv3pTmuP0zJzo9dDcnO5Df82IF32qw0PAQsRicMsqeU1LsGHqW6V/9ir1ET9+RQsaFt1O8NGbGnGLbtkIu7quqPudaUjOD//3Es7w3gCJDswMTaFvkr7a504NOHwiBy3D+Hw0vchWLHoLEmmSdbbEIIJ7f5a8Uw
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 02:26:12.4696 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a2586b59-c24b-43d0-138a-08d78686502f
X-MS-Exchange-CrossTenant-Id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=92e84ceb-fbfd-47ab-be52-080c6b87953f; Ip=[192.176.1.74];
 Helo=[oa.msg.ericsson.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR07MB5864
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iiqwo-00C6TG-On
Subject: [tipc-discussion] [net-next 2/6] Revert "tipc: set default MTU for
 UDP media"
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This reverts commit a4dfa72d0acd1c99a160e25c099849ae37ad13fd

The above change turned out to be too aggressive, as it sometimes
overwhelms the virtio ring buffer and leads it to block all
transmsssion during up to 30 seconds. The basic problem is that the
link congestion control algorithm is only considering the transmission
queue length, disregarding the fact that each "packet" in the queue now
may correspond to a dozen actual network packets.

We will introduce a better solution to this in a later commit.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 include/uapi/linux/tipc_config.h | 5 -----
 net/tipc/link.c                  | 4 ++--
 net/tipc/udp_media.c             | 4 ++--
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/include/uapi/linux/tipc_config.h b/include/uapi/linux/tipc_config.h
index 4dfc056..15a3219 100644
--- a/include/uapi/linux/tipc_config.h
+++ b/include/uapi/linux/tipc_config.h
@@ -185,11 +185,6 @@
 #define TIPC_DEF_LINK_WIN 50
 #define TIPC_MAX_LINK_WIN 8191
 
-/*
- * Default MTU for UDP media
- */
-
-#define TIPC_DEF_LINK_UDP_MTU 14000
 
 struct tipc_node_info {
 	__be32 addr;			/* network address of node */
diff --git a/net/tipc/link.c b/net/tipc/link.c
index 467c53a..2531f94 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -527,7 +527,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
  * tipc_link_bc_create - create new link to be used for broadcast
  * @n: pointer to associated node
  * @mtu: mtu to be used initially if no peers
- * @window: send window to be used
+ * @window: packet window to be used as base for send window
  * @inputq: queue to put messages ready for delivery
  * @namedq: queue to put binding table update messages ready for delivery
  * @link: return value, pointer to put the created link
@@ -2267,7 +2267,7 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
 
 	l->stats.recv_nacks++;
 
-	/* Ignore if peers_snd_nxt goes beyond receive window */
+	/* Ignore if peers_snd_nxt goes beyond receive packet window */
 	if (more(peers_snd_nxt, l->rcv_nxt + l->window))
 		return rc;
 
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index d6620ad5..dcc4ba7 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -731,7 +731,8 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 			err = -EINVAL;
 			goto err;
 		}
-		b->mtu = b->media->mtu;
+		b->mtu = dev->mtu - sizeof(struct iphdr)
+			- sizeof(struct udphdr);
 #if IS_ENABLED(CONFIG_IPV6)
 	} else if (local.proto == htons(ETH_P_IPV6)) {
 		udp_conf.family = AF_INET6;
@@ -830,7 +831,6 @@ struct tipc_media udp_media_info = {
 	.tolerance	= TIPC_DEF_LINK_TOL,
 	.min_win	= TIPC_DEF_LINK_WIN,
 	.max_win	= TIPC_DEF_LINK_WIN,
-	.mtu		= TIPC_DEF_LINK_UDP_MTU,
 	.type_id	= TIPC_MEDIA_TYPE_UDP,
 	.hwaddr_len	= 0,
 	.name		= "udp"
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
