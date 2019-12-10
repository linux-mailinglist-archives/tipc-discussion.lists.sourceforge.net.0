Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C46117D58
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Dec 2019 02:48:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ieUdV-0007Tp-DW; Tue, 10 Dec 2019 01:48:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.rutherford@dektech.com.au>) id 1ieUdT-0007TY-LE
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 01:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jxp7vVYkzKxa3VZT22yeWDRkEt9yCclw3JrgdpK839Y=; b=GhXTxo7TU7To5BwJwaljM4PyGJ
 nLgSDwuk6d0i/MK7eEZPkbCqzYPDMB/YfLBc2tAomuHaWE87xcCsJ6N68zmtA57EyjtXKVvMqncJ1
 K7vFdHTIH3KefsmOFHOYe0g68WKcSajrWGNFspWwOkfEMgVvEx7kLiAULLiYJU2MfZ9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jxp7vVYkzKxa3VZT22yeWDRkEt9yCclw3JrgdpK839Y=; b=h1jjdl2mN7h6AQC7ou0ulESkUo
 1DvxFa/zrfvv4hNYeQW8SGl+GI+QJWIaqFe+wj8EWw6RfLW92GATqIbsYYqeADxrk1DsNpPvimZjR
 UTLPu80+y1Dq7yuW8V+xqS9UrB3FoVkZjDE6xuAJrh/sMWyJmIYur3rbQACggmHA5LD8=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ieUdQ-00FtbY-5K
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 01:48:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 66D704BC0B;
 Tue, 10 Dec 2019 12:48:11 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1575942491; bh=3aLMA
 vBMeylBcrsuVPAs5UAxFwg2l2YQzmgy2ugZqYw=; b=MObHVb4GZev4JdFzPrni5
 +hFnRhgF4lzzXURueALPZ+wsrC3AfJBRJU+hmiwIHDoccR7loH61l+7nQqGLM8Oo
 92AujGW63PSOxZYta0ofOyPsAqLigV/iaqlkvTfrnC9cDvwV1gdRcMI4Z4EDAO39
 LUG7AeYDZPZs3JzMyYEWwg=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id pb8CQXT-T79i; Tue, 10 Dec 2019 12:48:11 +1100 (AEDT)
Received: from cba01.dek-tpc.internal (cba01.dek-tpc.internal [172.16.83.49])
 by mail.dektech.com.au (Postfix) with ESMTP id 3D7A44BA1F;
 Tue, 10 Dec 2019 12:48:11 +1100 (AEDT)
Received: by cba01.dek-tpc.internal (Postfix, from userid 1014)
 id 1DF731806B5; Tue, 10 Dec 2019 12:48:11 +1100 (AEDT)
From: john.rutherford@dektech.com.au
To: tipc-discussion@lists.sourceforge.net
Date: Tue, 10 Dec 2019 12:48:02 +1100
Message-Id: <20191210014802.32612-1-john.rutherford@dektech.com.au>
X-Mailer: git-send-email 2.13.7
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
X-Headers-End: 1ieUdQ-00FtbY-5K
Subject: [tipc-discussion] [net-next] tipc: make legacy address flag
 readable over netlink
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: John Rutherford <john.rutherford@dektech.com.au>

To enable iproute2/tipc to generate backwards compatible
printouts and validate command parameters for nodes using a
<z.c.n> node address, it needs to be able to read the legacy
address flag from the kernel.  The legacy address flag records
the way in which the node identity was originally specified.

The legacy address flag is requested by the netlink message
TIPC_NL_ADDR_LEGACY_GET.  If the flag is set the attribute
TIPC_NLA_NET_ADDR_LEGACY is set in the return message.

Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
---
 include/uapi/linux/tipc_netlink.h |  2 ++
 net/tipc/net.c                    | 56 +++++++++++++++++++++++++++++++++++++++
 net/tipc/net.h                    |  1 +
 net/tipc/netlink.c                |  6 +++++
 4 files changed, 65 insertions(+)

diff --git a/include/uapi/linux/tipc_netlink.h b/include/uapi/linux/tipc_netlink.h
index 6c2194ab745b..dc0d23a50e69 100644
--- a/include/uapi/linux/tipc_netlink.h
+++ b/include/uapi/linux/tipc_netlink.h
@@ -65,6 +65,7 @@ enum {
 	TIPC_NL_UDP_GET_REMOTEIP,
 	TIPC_NL_KEY_SET,
 	TIPC_NL_KEY_FLUSH,
+	TIPC_NL_ADDR_LEGACY_GET,
 
 	__TIPC_NL_CMD_MAX,
 	TIPC_NL_CMD_MAX = __TIPC_NL_CMD_MAX - 1
@@ -176,6 +177,7 @@ enum {
 	TIPC_NLA_NET_ADDR,		/* u32 */
 	TIPC_NLA_NET_NODEID,		/* u64 */
 	TIPC_NLA_NET_NODEID_W1,		/* u64 */
+	TIPC_NLA_NET_ADDR_LEGACY,	/* flag */
 
 	__TIPC_NLA_NET_MAX,
 	TIPC_NLA_NET_MAX = __TIPC_NLA_NET_MAX - 1
diff --git a/net/tipc/net.c b/net/tipc/net.c
index 2de3cec9929d..85400e4242de 100644
--- a/net/tipc/net.c
+++ b/net/tipc/net.c
@@ -302,3 +302,59 @@ int tipc_nl_net_set(struct sk_buff *skb, struct genl_info *info)
 
 	return err;
 }
+
+static int __tipc_nl_addr_legacy_get(struct net *net, struct tipc_nl_msg *msg)
+{
+	struct tipc_net *tn = tipc_net(net);
+	struct nlattr *attrs;
+	void *hdr;
+
+	hdr = genlmsg_put(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
+			  0, TIPC_NL_ADDR_LEGACY_GET);
+	if (!hdr)
+		return -EMSGSIZE;
+
+	attrs = nla_nest_start(msg->skb, TIPC_NLA_NET);
+	if (!attrs)
+		goto msg_full;
+
+	if (tn->legacy_addr_format)
+		if (nla_put_flag(msg->skb, TIPC_NLA_NET_ADDR_LEGACY))
+			goto attr_msg_full;
+
+	nla_nest_end(msg->skb, attrs);
+	genlmsg_end(msg->skb, hdr);
+
+	return 0;
+
+attr_msg_full:
+	nla_nest_cancel(msg->skb, attrs);
+msg_full:
+	genlmsg_cancel(msg->skb, hdr);
+
+	return -EMSGSIZE;
+}
+
+int tipc_nl_net_addr_legacy_get(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	struct tipc_nl_msg msg;
+	struct sk_buff *rep;
+	int err;
+
+	rep = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
+	if (!rep)
+		return -ENOMEM;
+
+	msg.skb = rep;
+	msg.portid = info->snd_portid;
+	msg.seq = info->snd_seq;
+
+	err = __tipc_nl_addr_legacy_get(net, &msg);
+	if (err) {
+		nlmsg_free(msg.skb);
+		return err;
+	}
+
+	return genlmsg_reply(msg.skb, info);
+}
diff --git a/net/tipc/net.h b/net/tipc/net.h
index b7f2e364eb99..6740d97c706e 100644
--- a/net/tipc/net.h
+++ b/net/tipc/net.h
@@ -47,5 +47,6 @@ void tipc_net_stop(struct net *net);
 int tipc_nl_net_dump(struct sk_buff *skb, struct netlink_callback *cb);
 int tipc_nl_net_set(struct sk_buff *skb, struct genl_info *info);
 int __tipc_nl_net_set(struct sk_buff *skb, struct genl_info *info);
+int tipc_nl_net_addr_legacy_get(struct sk_buff *skb, struct genl_info *info);
 
 #endif
diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
index e53231bd23b4..7c35094c20b8 100644
--- a/net/tipc/netlink.c
+++ b/net/tipc/netlink.c
@@ -83,6 +83,7 @@ const struct nla_policy tipc_nl_net_policy[TIPC_NLA_NET_MAX + 1] = {
 	[TIPC_NLA_NET_ADDR]		= { .type = NLA_U32 },
 	[TIPC_NLA_NET_NODEID]		= { .type = NLA_U64 },
 	[TIPC_NLA_NET_NODEID_W1]	= { .type = NLA_U64 },
+	[TIPC_NLA_NET_ADDR_LEGACY]	= { .type = NLA_FLAG }
 };
 
 const struct nla_policy tipc_nl_link_policy[TIPC_NLA_LINK_MAX + 1] = {
@@ -273,6 +274,11 @@ static const struct genl_ops tipc_genl_v2_ops[] = {
 		.doit	= tipc_nl_node_flush_key,
 	},
 #endif
+	{
+		.cmd	= TIPC_NL_ADDR_LEGACY_GET,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit	= tipc_nl_net_addr_legacy_get,
+	},
 };
 
 struct genl_family tipc_genl_family __ro_after_init = {
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
