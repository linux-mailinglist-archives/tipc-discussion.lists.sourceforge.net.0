Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9714961A2A9
	for <lists+tipc-discussion@lfdr.de>; Fri,  4 Nov 2022 21:49:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1or3cu-0007k2-UO;
	Fri, 04 Nov 2022 20:49:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1or3cf-0007jc-B7
 for tipc-discussion@lists.sourceforge.net;
 Fri, 04 Nov 2022 20:49:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XGHhxLgiqGNOfJBoEWhQBQmN8L2fNC42fpgAjpLMLjI=; b=XbfOj07bVxO4eBHP3+Gyr6V4Ea
 8ERfjAujxtjfQiow50SPB0KIylnllmHD+lctHWp1Tm07PD/GjlGslYXM2ycvL2JwqmBId95sLQQQp
 7LpFUBGszJGCBYPqSjluClJIKoPj8n4Pc3wjuW0wcBNbKn6+OorQDHAJ8QdYZdYkdUlo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XGHhxLgiqGNOfJBoEWhQBQmN8L2fNC42fpgAjpLMLjI=; b=D
 0mtQj0HCcmTZZOv5tb+0uAouqTBVYUk75o+i65ipq6ZIAg/0FRxM++exTeuXqUhsqEgBsePV9DBFE
 sXGOpUktusDiVIckfdS0oZ4nJWfB7NwCdvQ8b2dgc2ytWSHC57MTU/RINHlU1Zk0QBmfeZjkluIHj
 Fi1++GTt2ZCH7BWY=;
Received: from mail-qv1-f51.google.com ([209.85.219.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1or3ca-0007AE-VS for tipc-discussion@lists.sourceforge.net;
 Fri, 04 Nov 2022 20:49:01 +0000
Received: by mail-qv1-f51.google.com with SMTP id w10so3999280qvr.3
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 04 Nov 2022 13:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=XGHhxLgiqGNOfJBoEWhQBQmN8L2fNC42fpgAjpLMLjI=;
 b=FI9mDi1kGV9e6YcLO+J6YF53zeci7uu6JDNWKwz9ob+L7X1vXhOXD54zPQAFDVqe46
 h+g8M8aapq2sACgbgjrdUW9I209wvnRx1DPloaUDs2LugTqAe3K/CE4eU29aATWcIk0s
 j14gx/CgsCJoYelCrKsSJVXekZp0wc3W/sbMFBsIXMkU/tJX00IzMVLnaA2OFRL9g+jf
 Rmy9oLnAxKoAE/MYamBAh2c2L3kujfw2wIfycSZ9VTfmbdB0LfByi7tYLklj5cbQpc0T
 daT32d3MhJi0iUPZVosx0isT5zxkUynLIPWZAhJJ6qXI53q+FpVOUWoOmz/hTScuyz3P
 fHUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XGHhxLgiqGNOfJBoEWhQBQmN8L2fNC42fpgAjpLMLjI=;
 b=wChwR9A0+w/pPQe0TqmYI383f1XzBdQEFMey+GVx2tIJEj5FONn6beqGsMfRMFdGDQ
 ZIf6KoOOHYdKVb+iAUXzMXKV0yUyJ7F0xYcf4pyKeL1sqb/urO+mBC8drnrD6Yqx6w0l
 snKUL6GFjnhnu619Bc4L/8/9dSOqzyOuU17seTJNBWCH+9dRFTO8ylITn8+RzUNqeS62
 DQ2TFouApH3dxQ6UD2r6+oC2kHcXBp4EmhwVX2nmt5exRIgzR5lPniGobbvgeK2p7HPi
 QQ4qVks1Kpxua1uWkUfX/jQPvW3rN8Vct4pijbLhlfObTFb9Bp/DyiQye1owe65irzVc
 FXdg==
X-Gm-Message-State: ACrzQf3d9GOp4Wd0BOl/fjnUnpldTiKkO8b2jBKZUoZPeAfUnTf1SiPP
 cjrTSALtxM2kMgvxeRcGuIA=
X-Google-Smtp-Source: AMsMyM4L/CCFdMuTsIxady0/YuGCFo+r3Tm7LDCT7yNWulZX4AlW7H5JWNQugOIA/m+Zp3KNwaA0GQ==
X-Received: by 2002:ad4:5c8c:0:b0:4b9:fe5:e7a8 with SMTP id
 o12-20020ad45c8c000000b004b90fe5e7a8mr33744690qvh.99.1667594935131; 
 Fri, 04 Nov 2022 13:48:55 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 cq10-20020a05622a424a00b00397e97baa96sm285932qtb.0.2022.11.04.13.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 13:48:54 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Fri,  4 Nov 2022 16:48:53 -0400
Message-Id: <ccd6a7ea801b15aec092c3b532a883b4c5708695.1667594933.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is a follow-up for commit 974cb0e3e7c9 ("tipc: fix
 uninit-value
 in tipc_nl_compat_name_table_dump") where it should have type casted
 sizeof(..)
 to int to work when TLV_GET_DATA_LEN() returns a ne [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.51 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.51 listed in wl.mailspike.net]
X-Headers-End: 1or3ca-0007AE-VS
Subject: [tipc-discussion] [PATCH net] tipc: fix the msg->req tlv len check
 in tipc_nl_compat_name_table_dump_header
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
Cc: Eric Dumazet <edumazet@google.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This is a follow-up for commit 974cb0e3e7c9 ("tipc: fix uninit-value
in tipc_nl_compat_name_table_dump") where it should have type casted
sizeof(..) to int to work when TLV_GET_DATA_LEN() returns a negative
value.

syzbot reported a call trace because of it:

  BUG: KMSAN: uninit-value in ...
   tipc_nl_compat_name_table_dump+0x841/0xea0 net/tipc/netlink_compat.c:934
   __tipc_nl_compat_dumpit+0xab2/0x1320 net/tipc/netlink_compat.c:238
   tipc_nl_compat_dumpit+0x991/0xb50 net/tipc/netlink_compat.c:321
   tipc_nl_compat_recv+0xb6e/0x1640 net/tipc/netlink_compat.c:1324
   genl_family_rcv_msg_doit net/netlink/genetlink.c:731 [inline]
   genl_family_rcv_msg net/netlink/genetlink.c:775 [inline]
   genl_rcv_msg+0x103f/0x1260 net/netlink/genetlink.c:792
   netlink_rcv_skb+0x3a5/0x6c0 net/netlink/af_netlink.c:2501
   genl_rcv+0x3c/0x50 net/netlink/genetlink.c:803
   netlink_unicast_kernel net/netlink/af_netlink.c:1319 [inline]
   netlink_unicast+0xf3b/0x1270 net/netlink/af_netlink.c:1345
   netlink_sendmsg+0x1288/0x1440 net/netlink/af_netlink.c:1921
   sock_sendmsg_nosec net/socket.c:714 [inline]
   sock_sendmsg net/socket.c:734 [inline]

Reported-by: syzbot+e5dbaaa238680ce206ea@syzkaller.appspotmail.com
Fixes: 974cb0e3e7c9 ("tipc: fix uninit-value in tipc_nl_compat_name_table_dump")
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/netlink_compat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index fc68733673ba..dfea27a906f2 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -880,7 +880,7 @@ static int tipc_nl_compat_name_table_dump_header(struct tipc_nl_compat_msg *msg)
 	};
 
 	ntq = (struct tipc_name_table_query *)TLV_DATA(msg->req);
-	if (TLV_GET_DATA_LEN(msg->req) < sizeof(struct tipc_name_table_query))
+	if (TLV_GET_DATA_LEN(msg->req) < (int)sizeof(struct tipc_name_table_query))
 		return -EINVAL;
 
 	depth = ntohl(ntq->depth);
-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
