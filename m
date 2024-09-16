Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D65B597A09F
	for <lists+tipc-discussion@lfdr.de>; Mon, 16 Sep 2024 13:59:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1sqANt-0007z2-JK;
	Mon, 16 Sep 2024 11:59:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1sqANs-0007ys-0c
 for tipc-discussion@lists.sourceforge.net;
 Mon, 16 Sep 2024 11:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p+kph0EDJsujbjLkgOAgBpufexodU3FlPN5UsFdGpHo=; b=CLI8+866o72fdzUH+RbORgerVI
 SEcFb56l5xDagfY6yeqL1trpmTmCLtebAVa9luJtIkI8tLc8BbSWsvxsrwmau141tyyRM2g9376o3
 v5FTh8xHTdkBNnz0gfJsq8EhFS79qWqF/b1V7lU3k7AL6P7N0PA0IL3Pr19CCuIQUBwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p+kph0EDJsujbjLkgOAgBpufexodU3FlPN5UsFdGpHo=; b=b
 NbJMKNhfQdSAeW/td/EuJnSIezsP7KnT80jPrqS9aUCrT6iodawp55C/lqGy8/YY1WSlb7j4i1saM
 wX0LmG6Ky/uo6ckBmbH+gvIc3lQmJzPkZnxcFpskE3s/d4mUdH8HbAYAXQ5ZGe4Kp3lDnfxyhS66G
 X+1FVbN/E0+BzFPE=;
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sqANs-0005ql-3y for tipc-discussion@lists.sourceforge.net;
 Mon, 16 Sep 2024 11:59:12 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-277fdd7d509so2062805fac.0
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 16 Sep 2024 04:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726487941; x=1727092741; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=p+kph0EDJsujbjLkgOAgBpufexodU3FlPN5UsFdGpHo=;
 b=AdcA5F4lrLphUpgy/t0wm8z5BnOC4wEuayd746ap5XPoXyutIgxXGCOfJ9pKxfzzf3
 j+XWxolQ/5ZjtbJX7IG1kPRu3tBvrFS+2MiOcz0rQtqSPA3OSAW6reNO0m++Vqznxj3p
 P3LSygUtNpZoGg+dlMIEVUq6V71+yPJqR/l7dOVf73BgRY9kI6yoqN8Etsx+YmbnDFNy
 vlUetkpwcOrPB7sNHstFa8o+3K82mJScqld5VaF7nH0e+apVypQg+x5Nrp0LU8zaQ99Z
 gYPJ8Chtu/+o+Z+zZzMgo/f2Uruuptl6q2vL12+rtf0519B7+84k9k/tO0s4ovPhykfP
 gT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726487941; x=1727092741;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=p+kph0EDJsujbjLkgOAgBpufexodU3FlPN5UsFdGpHo=;
 b=opNXAp6jxTig/kXVqBwjxhvQ4QdZYKNqswahh5oqMih/RdvrGy+kc2OEh60xuDrsjm
 2h7QsE6Tv6btn3JWVByYmfY2TAuzu5VJnJNXEXzEoSxdVsTB7rcrhprYJ6ZyVJKGUbsh
 eL1298VpAP0Y3qepTI7wOQwVrA2TDsI4CG7wzc07GlpD+7Kr4yd/0e2OiZ+KfjDoXIg8
 tjwzw0OetQbo1pNaHgleJQxZraR5if0Yc6U9081l4DvJLPc9UG3MktmgxK2JGonSdUri
 dY2WepaUQS+8ZwkZcTUpPG3bVIdnSA6V4wETfjtjM98yTDdwo2Y1P/rHss1eiQMKA0Tf
 hC+g==
X-Gm-Message-State: AOJu0YwcfGNPAhkHIDHSPENKLix0o0QtUgXb2c7UN5iRJ5IH0S5uO9tH
 iEDfBqz9KKcN7EQm9KF82J77yh1wH2QkTMMlRQ4A4Bpz60lTon8oh8FcAeHcFaFXSuLUwvHTSmo
 hXbw9tbsdcH0m0dp14iWdBJbkmGfX9VB7
X-Google-Smtp-Source: AGHT+IHW/28mv2LRUSF9FwfTG+16KXhj3AIKTDQW/5tE7nWQBwp3SFQclGv8joi3DJNLLbztNyB+AovVAY8E/om+z1A=
X-Received: by 2002:a05:6870:d146:b0:268:282b:bdec with SMTP id
 586e51a60fabf-27be6b227famr10251252fac.8.1726487941289; Mon, 16 Sep 2024
 04:59:01 -0700 (PDT)
MIME-Version: 1.0
From: prakash bisht <ps13.bisht@gmail.com>
Date: Mon, 16 Sep 2024 17:28:50 +0530
Message-ID: <CACB1WsQAHZfeFHgy-u+ZO46P8BwVMu-j_GHm2Rp9MDNSvkWvhQ@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net, Xin Long <lxin@redhat.com>, 
 "jmaloy@redhat.com" <jmaloy@redhat.com>,
 tung quang nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hi Tung, Xin, John,
 We are using tipc multicast sockets for
 publisher/subscriber type of application. Below are the socket details socket
 type : SOCK_RDM tipc addr type : TIPC_MCAST We would like to know if the
 successful bind() call on the subscriber socket guarantees that the subscriber
 is ready and no publication would be missed ? Or shall we wait for some time
 before assuming [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ps13.bisht[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sqANs-0005ql-3y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Reg: Need information about TIPC_MCAST subscriber
 socket
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

Hi  Hi Tung,Xin,John,

We are using tipc multicast sockets for publisher/subscriber type of
application.
Below are the socket details
socket type     :  SOCK_RDM
tipc addr type  :  TIPC_MCAST

We would like to know if the successful bind() call on the subscriber
socket guarantees that the subscriber is ready and no publication would be
missed ? Or shall we wait for some time before assuming the subscriber
socket is ready ?


Thanks and Regards,
Prakash

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
