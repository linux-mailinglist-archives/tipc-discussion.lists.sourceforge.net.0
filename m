Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0E6C4831
	for <lists+tipc-discussion@lfdr.de>; Wed, 22 Mar 2023 11:49:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pew1V-00037B-Tq;
	Wed, 22 Mar 2023 10:48:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ragamailme@gmail.com>) id 1pew1N-000370-1n
 for tipc-discussion@lists.sourceforge.net;
 Wed, 22 Mar 2023 10:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Ni21nhDIe+zUekT6ow2aLB+ThUlVeCyB5pIghxVDYY=; b=mn7LWD3eUOWWioSpt7HRJPWH7q
 rTrD7eZBMSxod4dBi5aAyfdvjfaph7Tw3cp/cK0QSmWbbO2NesC4hbcEkx7qOLW0pb1StGu6Yvtb2
 VxmIeiRo6M7CxglcDAHMQVcy61Dhd6tLBY7idmBdum4kq2Mr3U10V54g87w2yHdfbWFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6Ni21nhDIe+zUekT6ow2aLB+ThUlVeCyB5pIghxVDYY=; b=S
 QA29SvvAHJMZgMkwRWmRM4t1xjAsXxK65CXlAMs08eoIWeavC2l5BYkbu4b+9KEDvPETGC76N76UU
 cKOo1rH33zR1xD3OcYF/8VoEyku9rkAM7HP3RcAXrpLIkcVkYTzg5xIxuvvXxf2q9AAJMkBSRhpC7
 pIjXcae6Js8ItuG0=;
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pew1N-00GSR0-4B for tipc-discussion@lists.sourceforge.net;
 Wed, 22 Mar 2023 10:48:45 +0000
Received: by mail-ed1-f54.google.com with SMTP id x3so70896991edb.10
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 22 Mar 2023 03:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679482118;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=6Ni21nhDIe+zUekT6ow2aLB+ThUlVeCyB5pIghxVDYY=;
 b=FAVbPrnGpfeSJqaUSEjPBGRGDXZ6DLh5+eJBwLd1e/+TyGhmTmxdmfwlfv66tVL7jv
 kXReyQ9+EYW+YltM63w0P88/1JBGy/tesYO1+AODV+FZGxOr4+xlmkrUReMJPZNJsOqD
 P63HfzoN0jmDWCBxsZJ2tFrNxiZEn5vC6LU9AVc7KQdeC8Ibznr6S5oBLP8448hVvo5Y
 We207wAnzSx9IxhVnAumzFM85x7Q5O4QsQCi+g5mQE9RZToqhR6m+PQU3WUWqxdGZBkv
 BQEFTFFP2uHgOr6YX+Op8jRG4h/qzM12e8RGG50H0zcHOZggFJbZSFYUdZdyrcW2RR5R
 2E/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679482118;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6Ni21nhDIe+zUekT6ow2aLB+ThUlVeCyB5pIghxVDYY=;
 b=JsercvRk/ahHoOgj+GfqcUzcLFSTZqu19vxr+RNTwtsDNjkX4JjkWCp162LNSCoxZa
 CsLTLHDASGIgmauIEy2OElkT5+d0mQriQAmE7oYbJMsszSuhOpBRhW1oriIgKvBNbRPi
 yYTpE2iIqiNhjaD0HKpQezG7dYKCgLhhLt/k5HqvuAKoCmcTpB3z7rHJzt/kHr0bXkvU
 gXjm4AczLMojmPuhe2eFIEFRfcOP0C4eEudh8MqWbzBLffN67YgNq+SVOmwBOk0YhOXx
 +jATNzJ3P2c6x7MEBPQllLseDeaN9ZwWHm1VahYAi1sIeLzXNjroCCGt2/oyD77gZowL
 7osQ==
X-Gm-Message-State: AO0yUKUzQdw19cFcXQqbpsZJ3MUs9mg7mH8CBrbUzi9SaRfg3GDEpfd8
 wUE5DdGmWsAkVkr2nXjZqOn0FcJjltt8CbdyznRMAjIx1EbAmk8LkB4=
X-Google-Smtp-Source: AK7set9i3OdnigBihy7QSlipDf5LaUcuQnnTZvomgLrJRs1tMJeUsjOFhqeAMS6PUg7OrQCI/+WjvjxvD8WF4yzkK08=
X-Received: by 2002:a17:906:641:b0:8b8:aef3:f2a9 with SMTP id
 t1-20020a170906064100b008b8aef3f2a9mr2931827ejb.0.1679482118155; Wed, 22 Mar
 2023 03:48:38 -0700 (PDT)
MIME-Version: 1.0
From: Ragavendran Sridharan <ragamailme@gmail.com>
Date: Wed, 22 Mar 2023 16:18:25 +0530
Message-ID: <CANWiQNnk-q+uK52x6+tP8yf8OWR7hOJJa+uaA1ZwiZ63ZR3SUQ@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Team, I am requesting assistance onTIPC in linux. In our
 project we are using Tipc version 2.02 version . We are facing the issue
 of TIPC connections not getting establised and returning Error as :TIPC_ERR_
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ragamailme[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.54 listed in wl.mailspike.net]
X-Headers-End: 1pew1N-00GSR0-4B
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Requesting Support On TIPC TIPC_ERR_NO_PORT
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

Hi Team,

I am requesting assistance onTIPC in linux. In our project we are using
Tipc version 2.02 version .  We are facing the issue of TIPC connections
not getting establised and returning Error as :TIPC_ERR_NO_PORT from TIPC
Server.

Could you please list down the scenarios in which this errors will occur.

Thank And Regards,
Raagavendran


<https://docs.huihoo.com/doxygen/linux/kernel/3.7/tipc_8h.html#a0cba261c068b96e6f296218445f75f78>

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
