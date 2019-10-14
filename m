Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CD4D5A17
	for <lists+tipc-discussion@lfdr.de>; Mon, 14 Oct 2019 06:05:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iJrbN-0008Uo-IT; Mon, 14 Oct 2019 04:04:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iJrbM-0008Ug-Co
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 04:04:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SDQVLZHhytD4bE43tfodiQC7r1QKEd4eOc7mpmM5i08=; b=J1gH1OYMS7Ef8tzYGWJQuBaqtm
 nEVpE5R6lXNlZKbiZUqfQXE8/vlCufjzpzbQjSIFgON4Lr/MJz1zWq1dQ+zWaJVrssjZrJwYNk4Lw
 YXoTG5DEqMuxGAYEljAdVUVTVYNOMEXqy3c8g2VWzFhTV8EEh1tsJLUC/WKfTqCl/pE8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SDQVLZHhytD4bE43tfodiQC7r1QKEd4eOc7mpmM5i08=; b=I
 IMC8rycVdE+tD798+rbmSgm+/GPIpdN2FGhVwmYcMYQvs/JgocuC6iy5Wh+AvRj0j/aE90TtpvSlD
 T427ejwhoCPhcPOoD88w+SFFDzp6CafR5mJnJz07Cfnx6qAK/42LKZgPctWwjXvaJKL66EEvvnbgh
 44Xmvj7ZVdBz0kB0=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iJrbJ-008Jjj-8r
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 04:04:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 76FBF48C50;
 Mon, 14 Oct 2019 15:04:41 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1571025881; bh=4PIZjrU+WR7oW0rjzcZw49K6OWkxo8jQA
 vL0zaJjWqA=; b=jcSYTDYoUC37zM6GKc0ntIW/8Op964QeNju/SyidWCMSheJ8N
 Tek3ogg5QyeL1KPsSS2FTKjaJGQg+V6uVJS/7Qhw223WOcZoiWhrm5YyNoLLbIjw
 ie6mBxyHDLKI4+FzYVpZJN5jcuetdE6cGyfcNUX8bvNDZWy5rdEuzjSof8=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xKHXnVu5TxqH; Mon, 14 Oct 2019 15:04:41 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 513D048CCD;
 Mon, 14 Oct 2019 15:04:40 +1100 (AEDT)
Received: from build.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 2498548C50;
 Mon, 14 Oct 2019 15:04:40 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com, lxin@redhat.com
Date: Mon, 14 Oct 2019 11:03:26 +0700
Message-Id: <20191014040326.4955-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
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
X-Headers-End: 1iJrbJ-008Jjj-8r
Subject: [tipc-discussion] [iproute2-next v2] tipc: support 128bit node
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
 tipc/peer.c | 55 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 54 insertions(+), 1 deletion(-)

diff --git a/tipc/peer.c b/tipc/peer.c
index f6380777033d..e1517743f80f 100644
--- a/tipc/peer.c
+++ b/tipc/peer.c
@@ -59,17 +59,70 @@ static int cmd_peer_rm_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
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
+		fprintf(stderr, "Usage: %s peer remove nodeid NODEID\n",
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
+	fprintf(stderr,
+		"Usage: %s peer remove PROPERTY\n\n"
+		"PROPERTIES\n"
+		" address          - Remove peer node address\n"
+		" nodeid           - Remove peer node identity\n",
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
+	fprintf(stderr, "Usage: %s peer remove nodeid NODEID\n",
+		cmdl->argv[0]);
+}
+
 static int cmd_peer_rm(struct nlmsghdr *nlh, const struct cmd *cmd,
 			struct cmdl *cmdl, void *data)
 {
 	const struct cmd cmds[] = {
-		{ "address",	cmd_peer_rm_addr,	cmd_peer_rm_help },
+		{ "address", cmd_peer_rm_addr,   cmd_peer_rm_addr_help },
+		{ "nodeid",  cmd_peer_rm_nodeid, cmd_peer_rm_nodeid_help },
 		{ NULL }
 	};
 
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
