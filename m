Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C5585A4FF
	for <lists+tipc-discussion@lfdr.de>; Mon, 19 Feb 2024 14:41:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1rc3ta-0008Tv-26;
	Mon, 19 Feb 2024 13:41:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1rc3tY-0008To-Rg
 for tipc-discussion@lists.sourceforge.net;
 Mon, 19 Feb 2024 13:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hnvcpEHxxpBdon7QLNbyydbySgAaQkVHUO/O4CJIKQc=; b=Mlo3nVWz5E1amDfjdeSWN1W3aN
 h3ZbKH4YRYWdCuf95gRkyAcbFz69oqSOLJ6B7V64z9CZrK5lcdgUvUO6oW3t4icGJrIwFqQsH0bKz
 i0oanTEiovBxBPvTMunwiI9yByma0lj2jzAuYteD63ME85fG3Y29/z6pZS4j/L9orS+o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hnvcpEHxxpBdon7QLNbyydbySgAaQkVHUO/O4CJIKQc=; b=X
 MS4xJY/vXR5ZOt+v4o2TWPkNT9N5Qo+JZsOa14F4o38oTZYNj1QtxU3xFkhFDJkiWgu9FOVQCLOvo
 E7F991Ys1/SADFNQNPLatMdR+hMQeKWk7j3c9jPCBbxD7GfJB1JLfB8xGjRbaNVCf1Lniw3+1gmYq
 6EhdNQGlZq3RD0DY=;
Received: from mail-ej1-f52.google.com ([209.85.218.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rc3tW-0004vS-Rs for tipc-discussion@lists.sourceforge.net;
 Mon, 19 Feb 2024 13:41:20 +0000
Received: by mail-ej1-f52.google.com with SMTP id
 a640c23a62f3a-a3e82664d53so137435466b.3
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 19 Feb 2024 05:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708350068; x=1708954868; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=hnvcpEHxxpBdon7QLNbyydbySgAaQkVHUO/O4CJIKQc=;
 b=WKsWgFJd/i4SKVYfERCDhaRMHOgLw5qScD1jgQY/9XOLxDOosKlFj7XGQgNe0IoLBu
 /gcRs2iIfWGa5q65xVwmmjaxaGVZAx5FKdQTDfvrFs03xZaZtJUphO2DE2gP9VsCcuRx
 edWlZPwTxENUFeymtL3oa1VXhexwgFZYR7nnhhj7aRiYCPwR/2nE5lz34DjttcTAFPXt
 8W0+6r6lyLad3RZ+ZahnBeUNE9OFtm1EbvXq32Su60voUYl0UaVKYA9SOcGAu2U/pdtV
 hizs5/jtd5J17BWChhPNwIwO51c2BLpSpA0RnoDiyiffhW4WZEb40OwZJ4ypUblHdrRO
 g+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708350068; x=1708954868;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hnvcpEHxxpBdon7QLNbyydbySgAaQkVHUO/O4CJIKQc=;
 b=pJoAjIc4SgZQhj3TwzrW55ZfqVxjGUylOATjXacLjjPXGAHfb0gAgUAMD2mP5hUys7
 DEPmunc46u+MO0Nb4bVfyt9oIlGD9W+B6sA6bRf31cwTM4Yb44vFvTk6MuSBctNEce6r
 lCyByneFJGLdi35EHrMP49SAY7bBv4I7xTLCwS4/PX966lsXjOLLOyekGF1AmCWzKSuE
 RuadZv+njTViM5854PVLKvsXYZ9ja7AIbQV0rHKOUL8MZGdXosJFIWR00PUeEmTPBEeW
 N6h/tsEvDYYtvZmkhJMixNVXx5HpyD4/EZ8I807F2P4nFJIWXMjFO3ZkMp9P9fCJak8v
 J6uQ==
X-Gm-Message-State: AOJu0Ywz1JiEB+J2hwBVqrG00Hhj26C87JBm3QUMjsbdFNsDSLgacFmW
 ZAE3IoOf1vp+jIAnDriuh0DTBgE1CL62VyEXRfMHBVjq5ZoedUmVNsjJjBhVKcR55MTBtYHEEty
 eheWNic0/4Vr2tLw2dxSjr1ckVfUSnnHTgmE=
X-Google-Smtp-Source: AGHT+IEZfP0caKV99vCsyJGwgpp2X31yC97Nu3NTXKJceYMJhMDd+eCIgjRPm6UXKodj8pnZVAG1fq4Dje9wKM96dQ8=
X-Received: by 2002:a17:907:76ac:b0:a3d:5dc7:5b9e with SMTP id
 jw12-20020a17090776ac00b00a3d5dc75b9emr8846392ejc.15.1708350067888; Mon, 19
 Feb 2024 05:41:07 -0800 (PST)
MIME-Version: 1.0
From: prakash bisht <ps13.bisht@gmail.com>
Date: Mon, 19 Feb 2024 19:10:56 +0530
Message-ID: <CACB1WsS8yG7QidBgjA_HDb4UcX1wrugseQRNkEvDvOzxSGMpHg@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi John/Xin, Tung,
 I hope you guys are doing well. I need some
 suggestions about using a TIPC socket for the "SOCK_SEQPACKET" type while
 using a UDP bearer. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ps13.bisht[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.52 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rc3tW-0004vS-Rs
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Reg: TIPC socket buffer size recommendation
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

Hi  John/Xin,Tung,

I hope you guys are doing well.


I need some suggestions about using a TIPC socket for the "SOCK_SEQPACKET"
type while using a UDP bearer.

There is a use case where the incoming traffic is very high for a short
period intermittently.

1. As TIPC creates a UDP socket for a bearer and multiple TIPC sockets are
kind of multiplexed into one UDP socket. Can it slow the performance when
the incoming traffic is high?

2. Can we increase the buffer size of the TIPC UDP socket alone without
changing the system level default receive buffer size ?

I would like to increase the socket buffer size to reduce the packet drops
and be efficient but don't want to change the default value at the
system level.

Please advise what is recommended in this case.


Kernel version : 4.19.81

Socket type :      SOCK_SEQPACKET



Would appreciate any help.


Thanks,

Prakash

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
