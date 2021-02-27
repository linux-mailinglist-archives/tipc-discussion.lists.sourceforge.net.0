Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51295326DF1
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2sz-0000Om-2Q; Sat, 27 Feb 2021 16:56:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2sw-0000OT-JN
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nxu4coJfty546UTYULhfK93Fiy/2KUr0pXsqDq5VyF4=; b=mJ2p9LmdRdORl10kMI24n2t0D0
 Sb7PyDVygbWa1fsBW2vlD59d+yn1rk4RXeNGQNa4CgFyrO4mC0hjhCixpdZ9wF8T1O/Z7fCSHD8U1
 +0IHzS+DuTzXUNfRt81WcQzVdbizbamYKVcGoqa85YvTIDP+1Xa/ZC+w22g2mU15Q9wM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Nxu4coJfty546UTYULhfK93Fiy/2KUr0pXsqDq5VyF4=; b=a
 DrEXztW9av9vCjh0sJr9qtTuzb0+4/H4afme9Zq87Vg9IUH64Bj8MroaTp8FM36wlnqg/Y0z2gTm5
 Y+yGO0L085WzyErn7FGqNtw63qxmQztD0gwHp220SrxutPOfURozM6cEuw2VF3oJQOsLEnNkZpYYT
 Eak/VAWJUUEDCFOc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lG2sn-0002GL-Gz
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Nxu4coJfty546UTYULhfK93Fiy/2KUr0pXsqDq5VyF4=;
 b=PG7WmTz4vWqmqu9fBLR4p8D3a19/Ow9DjrOCfH5TP0jezqGrLInp/JwZ6RhbmOfan0qNqf
 NDY6o3uTrQV9aybFgUCiDe+ujsa5iy6Oi1J3skuafbrQUlwPot+xZj+3P5hBH5UTrA7oAI
 ZEJ+pwCCo+lbgbML274CTo8nGoPRTDE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-qmnTLnL4NkOAJtHEgOtRBQ-1; Sat, 27 Feb 2021 11:55:46 -0500
X-MC-Unique: qmnTLnL4NkOAJtHEgOtRBQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A303107ACE3;
 Sat, 27 Feb 2021 16:55:45 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4C203669F2;
 Sat, 27 Feb 2021 16:55:43 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:26 -0500
Message-Id: <20210227165542.3781624-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lG2sn-0002GL-Gz
Subject: [tipc-discussion] [net-next v2 00/16] tipc: cleanups and
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

v2:
   - Eliminated sparse warnings, as per feedback from Hoang
   - Fixed some typos, as per feedback from Tung
   - Fixed some issues noted by Xin:
     #2/16: Moved spinlock.
     #4/16: Added scope check and used tipc_uaddr() in tipc_sk_join()
     #5/16: Eliminated 'addrtype' from struct publication (for now).
     #6/16: 'node number' represented as decimal in some places and
            hex in others. I will fix that in a separate patch later.
     #8/16: Re-introduce use of node2scope(). This function is needed
            later.
     #13/16: This change does not look motivated right now, as stated
             in the commit log, but will be needed later. I kept it,
             just because of the consequences of removing it now and
             having to re-introduce it later.
     #14/16: Made tipc_sub_check_overlap() static, as also reported
             by sparse.

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
 net/tipc/name_distr.c |  91 +++++----
 net/tipc/name_table.c | 426 +++++++++++++++++++++---------------------
 net/tipc/name_table.h |  63 +++----
 net/tipc/net.c        |   8 +-
 net/tipc/node.c       |  28 +--
 net/tipc/socket.c     | 319 ++++++++++++++++---------------
 net/tipc/subscr.c     |  84 +++++----
 net/tipc/subscr.h     |  12 +-
 10 files changed, 573 insertions(+), 525 deletions(-)



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
