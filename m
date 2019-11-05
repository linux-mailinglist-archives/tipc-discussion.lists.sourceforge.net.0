Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD911EFA59
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Nov 2019 11:01:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRvef-0008K4-4n; Tue, 05 Nov 2019 10:01:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iRvee-0008Jx-6m
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 10:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Uv5dlkZXGpBR5YballO9Z0ZbPiL1xZB0O0S0SZGoZE0=; b=XNm/fklpkv9PVPfMLGfFzMUDHq
 9D8dgvM9UcwMc64XVSF3Nj3bS9ioPJLfeePwUkdCCOYf3TRHOBBsfE3uT1tcmQlVM+QVXsHELovg5
 D8+hTJmrynZZeAdOScNaP3dVOP0I+fXywBNosGPhxQdtRGJTqbxEffJagMaahrdshJeM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Uv5dlkZXGpBR5YballO9Z0ZbPiL1xZB0O0S0SZGoZE0=; b=g
 f5FlbXsnbASwr/7RsWrJDAt+hFvBIKCQM5Y1DAoY2yk/Nk0M7Qh99XcrzTFumf6NIBBs+KrKOS4hk
 qUrLKZVwecYi2tU/hcaj0I9AQs4Wdbm1RM5rPKPvrHfWq5YKFRV79hAo4v42kdoZdzBCspA+B61Z2
 PhuOBs/R2ulwfSSc=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRveb-000gmM-Pa
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 10:01:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 53A094AA20;
 Tue,  5 Nov 2019 21:01:27 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1572948087; bh=z4TpM5UgHxp1fq6dLk0j1aF9r/klUPAfX
 hBc40uzu+A=; b=QkhOR2ABUzZAfJSUQaJmGaVIu4uFvl00XsOiFVZzY+NG+NbKC
 3JGmR6SS6YmFoZETfhO49QWWl/tYREXq42S4VDhYb2mljPqpQKIifmiUMFt2A5cZ
 yRwHpjBsWrPzHQtRR0J+AsyDqaU+7Fq9/HYnqQppM8p4XQvORlP3h4XAtI=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2Z5grrvXjyDl; Tue,  5 Nov 2019 21:01:27 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 5B33D4AA14;
 Tue,  5 Nov 2019 21:01:26 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id BEC8F4AA05;
 Tue,  5 Nov 2019 21:01:25 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com
Date: Tue,  5 Nov 2019 17:01:18 +0700
Message-Id: <20191105100119.11755-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iRveb-000gmM-Pa
Subject: [tipc-discussion] [iproute2-next 1/2] tipc: support 128bit node
 identity for peer removing
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

We add the support to remove a specific node down with 128bit
node identifier, as an alternative to legacy 32-bit node address.

v2: improve usage for 'tipc peer remove' command

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 tipc/peer.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/tipc/peer.c b/tipc/peer.c
index f6380777033d..f14ec35e6f71 100644
--- a/tipc/peer.c
+++ b/tipc/peer.c
@@ -59,17 +59,68 @@ static int cmd_peer_rm_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
 	return msg_doit(nlh, NULL, NULL);
 }
 
+static int cmd_peer_rm_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
+			      struct cmdl *cmdl, void *data)
+{
+	char buf[MNL_SOCKET_BUFFER_SIZE];
+	__u8 id[16] = {0,};
+	__u64 *w0 = (__u64 *)&id[0];
+	__u64 *w1 = (__u64 *)&id[8];
+	struct nlattr *nest;
+	char *str;
+
+	if (cmdl->argc != cmdl->optind + 1) {
+		fprintf(stderr, "Usage: %s peer remove identity NODEID\n",
+			cmdl->argv[0]);
+		return -EINVAL;
+	}
+
+	str = shift_cmdl(cmdl);
+	if (str2nodeid(str, id)) {
+		fprintf(stderr, "Invalid node identity\n");
+		return -EINVAL;
+	}
+
+	nlh = msg_init(buf, TIPC_NL_PEER_REMOVE);
+	if (!nlh) {
+		fprintf(stderr, "error, message initialisation failed\n");
+		return -1;
+	}
+
+	nest = mnl_attr_nest_start(nlh, TIPC_NLA_NET);
+	mnl_attr_put_u64(nlh, TIPC_NLA_NET_NODEID, *w0);
+	mnl_attr_put_u64(nlh, TIPC_NLA_NET_NODEID_W1, *w1);
+	mnl_attr_nest_end(nlh, nest);
+
+	return msg_doit(nlh, NULL, NULL);
+}
+
 static void cmd_peer_rm_help(struct cmdl *cmdl)
+{
+	fprintf(stderr, "Usage: %s peer remove PROPERTY\n\n"
+		"PROPERTIES\n"
+		" identity NODEID         - Remove peer node identity\n",
+		cmdl->argv[0]);
+}
+
+static void cmd_peer_rm_addr_help(struct cmdl *cmdl)
 {
 	fprintf(stderr, "Usage: %s peer remove address ADDRESS\n",
 		cmdl->argv[0]);
 }
 
+static void cmd_peer_rm_nodeid_help(struct cmdl *cmdl)
+{
+	fprintf(stderr, "Usage: %s peer remove identity NODEID\n",
+		cmdl->argv[0]);
+}
+
 static int cmd_peer_rm(struct nlmsghdr *nlh, const struct cmd *cmd,
 			struct cmdl *cmdl, void *data)
 {
 	const struct cmd cmds[] = {
-		{ "address",	cmd_peer_rm_addr,	cmd_peer_rm_help },
+		{ "address",  cmd_peer_rm_addr,   cmd_peer_rm_addr_help },
+		{ "identity", cmd_peer_rm_nodeid, cmd_peer_rm_nodeid_help },
 		{ NULL }
 	};
 
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
