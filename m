Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DAE2D325D
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4u-0007x7-IS; Tue, 08 Dec 2020 18:51:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4i-0007vq-Iw
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s7VEbhIFTOf8Z9bD7TNBo/ScVDi6HRGHZQYS9EiLMKI=; b=W8jqyULk1DGGOGAyBWPTwnq4nn
 AkdQM6C9BXXw8oZtYT15h/voVlhp1pNu1vHoX8po68eeq7MwMUumXMgRP54kE5Es9KqQ9MgpH91Ar
 LeYjfAaT+Yw9zV21mC51uMJaBQuBCni3Q1fWkzy/guhH4gF/YBDMBrqxhG9Rs7oVvvno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s7VEbhIFTOf8Z9bD7TNBo/ScVDi6HRGHZQYS9EiLMKI=; b=H
 jFrOrhxjWP+/CjemA5vejX76V9HASMhTTfutDnpO45byZQtaGRJJnGrlAwLyKPdp0Lv12Gj3o9SkV
 L9Snzqk9p9Y2N1smU4ODNE3S8v44D3djK7+JWIAnuBJK78nIbAF7gSTQRy9liaEXXtKRk22dX7+9X
 MktKzwUmxiOc2mkc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4b-006uyk-Sj
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=s7VEbhIFTOf8Z9bD7TNBo/ScVDi6HRGHZQYS9EiLMKI=;
 b=MKHbTlLrQ1cw63GLpXpFrYRNoYb4W2eI9weJGROONAfYAaDlFezVXKI0gqKaALtdRyVFjG
 TmZ8Rt/60MiaVf24hF/Fx3O8uRlrwE5P+MskJF0Jz5kFIKQHzfiY+d97FeGzaPk5Uf7fGY
 lE/+Sxk2sm3dU7zfA8CjW32DMc6y+5w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-551-hk88UDPeORSa7W-zF6xbmQ-1; Tue, 08 Dec 2020 13:50:45 -0500
X-MC-Unique: hk88UDPeORSa7W-zF6xbmQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A25E809AC7;
 Tue,  8 Dec 2020 18:50:16 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 86DF36E406;
 Tue,  8 Dec 2020 18:50:13 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:49:56 -0500
Message-Id: <20201208185012.265508-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi4b-006uyk-Sj
Subject: [tipc-discussion] [net-next 00/16] tipc: cleanups and
 simplifications
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
Cc: xinl@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

We make a number of simplifications and cleanups, especially to call signatures
in the binding table. This makes the code easier to understand and serves as a
preparation for an upcoming functional addition.

Jon Maloy (16):
  tipc: re-organize members of struct publication
  tipc: move creation of publication item one level up in call chain
  tipc: introduce new unified address type for internal use
  tipc: simplify signature of tipc_namtbl_publish()
  tipc: simplify call signatures for publication creation
  tipc: simplify signature of tipc_nametbl_withdraw() functions
  tipc: rename binding table lookup functions
  tipc: refactor tipc_sendmsg() and tipc_lookup_anycast()
  tipc: simplify signature of tipc_namtbl_lookup_mcast_sockets()
  tipc: simplify signature of tipc_nametbl_lookup_mcast_nodes()
  tipc: simplify signature of tipc_nametbl_lookup_group()
  tipc: simplify signature of tipc_service_find_range()
  tipc: simplify signature of tipc_find_service()
  tipc: simplify api between binding table and topology server
  tipc: add host-endian copy of user subscription to struct
    tipc_subscription
  tipc: remove some unnecessary warnings

 net/tipc/addr.h       |  44 +++++
 net/tipc/msg.c        |  23 ++-
 net/tipc/name_distr.c |  89 +++++----
 net/tipc/name_table.c | 419 ++++++++++++++++++++++--------------------
 net/tipc/name_table.h |  64 ++++---
 net/tipc/net.c        |   8 +-
 net/tipc/node.c       |  28 +--
 net/tipc/socket.c     | 313 +++++++++++++++----------------
 net/tipc/subscr.c     |  84 +++++----
 net/tipc/subscr.h     |  12 +-
 10 files changed, 567 insertions(+), 517 deletions(-)

-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
