Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 008B22AFBEF
	for <lists+tipc-discussion@lfdr.de>; Thu, 12 Nov 2020 02:27:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kd1OQ-0003ni-KU; Thu, 12 Nov 2020 01:27:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kd1OH-0003nL-UP
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Nov 2020 01:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yNo3N321x41VjjIbMNh03tSX+y755rT7BoQKJXfelD0=; b=fp3YAkhPKZ7SXqQYok8gRZ3GcQ
 p1LX2oz+/qeLyA7+ZVih1aB9VAokkfUS4ixOSerbzpHVaon/8C8gNendhzyZItE3brAC45fWGJkyZ
 GRuViiFUr6FnzIAWiD6NqtChPFzVgG3qxB0mPvky9/oqMYQ9C3ZHfEsI67yzKj0LTZ04=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yNo3N321x41VjjIbMNh03tSX+y755rT7BoQKJXfelD0=; b=B
 otPdn7iKJXT45d0kAr1x01K9C3DCW8sI1cUr7C695Oip9D3E6b87fkq+cyNfhbjYGd/WyHff7+3F+
 AM/ccKafIkQ9Pcj0vO2PUY2u0c+51diKvsHlCn+JV8RKHes1Es5M2rYG+UCuhRbU4w9CS7jWBenCf
 IwM2qzsdUIJmIZYc=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kd1O2-00HXl2-4F
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Nov 2020 01:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605144407;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=yNo3N321x41VjjIbMNh03tSX+y755rT7BoQKJXfelD0=;
 b=Rhyl8jTRV7yAN+qBmbEhwSHhfeJK1ezGlZcs58fbC22Mocr63cA73xhClDR6F/plkMSbI4
 CUzNqkRtGyJvXBAgO0pUqTyTiOsks/q2Dwko+An1LWdhLWuPVUvISrxdVZHXugVw8iUiQk
 lOS1llIfncOysBWxm5LR+YG243iBChw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-386-6PB3XkWDOzGb-sdUTVUqsA-1; Wed, 11 Nov 2020 20:26:43 -0500
X-MC-Unique: 6PB3XkWDOzGb-sdUTVUqsA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7597580474B;
 Thu, 12 Nov 2020 01:26:42 +0000 (UTC)
Received: from f31.redhat.com (ovpn-112-40.rdu2.redhat.com [10.10.112.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EBD3F177F9;
 Thu, 12 Nov 2020 01:26:40 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Wed, 11 Nov 2020 20:26:37 -0500
Message-Id: <20201112012640.525346-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kd1O2-00HXl2-4F
Subject: [tipc-discussion] [net-next 0/3] tipc: some minor improvements
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

We add some improvements that will be useful in future commits.

Jon Maloy (3):
  tipc: refactor tipc_sk_bind() function
  tipc: make node number calculation reproducible
  tipc: update address terminology in code

 net/tipc/addr.c       |   7 ++-
 net/tipc/addr.h       |   1 +
 net/tipc/core.h       |  14 ++++++
 net/tipc/group.c      |   3 +-
 net/tipc/group.h      |   3 +-
 net/tipc/name_table.c |  11 +++--
 net/tipc/net.c        |   2 +-
 net/tipc/socket.c     | 110 ++++++++++++++++++++----------------------
 net/tipc/subscr.c     |   5 +-
 net/tipc/subscr.h     |   5 +-
 net/tipc/topsrv.c     |   4 +-
 11 files changed, 89 insertions(+), 76 deletions(-)

-- 
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
